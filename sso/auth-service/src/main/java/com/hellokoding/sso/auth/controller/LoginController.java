package com.hellokoding.sso.auth.controller;

import com.hellokoding.sso.auth.CookieUtil;
import com.hellokoding.sso.auth.JwtUtil;
import com.hellokoding.sso.auth.config.Config;
import com.hellokoding.sso.auth.dto.UserInfoDto;
import com.hellokoding.sso.auth.dto.request.RequestUserInfoDto;
import com.hellokoding.sso.auth.entity.User;
import com.hellokoding.sso.auth.errors.CustomAccessDeniedHandler;
import com.hellokoding.sso.auth.repository.UserRepository;
import com.hellokoding.sso.auth.security.UserService;
import com.hellokoding.sso.auth.util.JwtKey;
import com.hellokoding.sso.auth.util.JwtTokenProvider;
import org.springframework.context.annotation.Scope;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.AccessDeniedException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;

@Controller
public class LoginController {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final Config config;
    private final UserService userService;
    private final JwtTokenProvider jwtTokenProvider;

    public LoginController(UserRepository userRepository, PasswordEncoder passwordEncoder, Config config, UserService userService, JwtTokenProvider jwtTokenProvider) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.config = config;
        this.userService = userService;
        this.jwtTokenProvider = jwtTokenProvider;
    }

    @RequestMapping("/")
    public String home(){
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String login(HttpServletResponse httpServletResponse, String redirect, HttpSession httpSession) throws UnsupportedEncodingException {
        if(Objects.nonNull(httpSession.getAttribute(JwtKey.USERNAME))){
            String username = (String) httpSession.getAttribute("username");
            Map<String, Object> info= new HashMap<>();
            info.put(JwtKey.USERNAME, username);
            info.put(JwtKey.SERVICE, redirect);
            info.put(JwtKey.SESSION, httpSession.getId());
            String token = JwtUtil.generateToken(config.getJwtKey(), info);
            CookieUtil.create(httpServletResponse, JwtKey.JWT_COOKIE_NAME, token, false, -1, "localhost");
            return "redirect:" + redirect;
        }
        return "login";
    }

    @PostMapping(value = "login")
    public String login(HttpServletResponse httpServletResponse, String username, String password, String redirect, Model model, HttpSession httpSession) throws UnsupportedEncodingException {
        Optional<User> user = userRepository.findByEmail(username);
        if (username == null || !user.isPresent() || !passwordEncoder.matches(password, user.get().getPassword())) {
            model.addAttribute("error", "Invalid username or pass" +
                    "word!");
            return "login";
        }
        Map<String, Object> info= new HashMap<>();
        info.put(JwtKey.USERNAME, username);
        info.put(JwtKey.SERVICE, redirect);
        info.put(JwtKey.SESSION, httpSession.getId());
        String token = JwtUtil.generateToken(config.getJwtKey(), info);
        CookieUtil.create(httpServletResponse, JwtKey.JWT_COOKIE_NAME, token, false, -1, "localhost");
        httpSession.setAttribute(JwtKey.USERNAME, username);
        httpSession.setAttribute(JwtKey.SERVICE, redirect);
        return "redirect:" + redirect;
    }

    @RequestMapping(value = "logout")
    public String logout(HttpServletResponse response, HttpSession httpSession) throws UnsupportedEncodingException {
        CookieUtil.clear(response, JwtKey.JWT_COOKIE_NAME);
        httpSession.removeAttribute("username");
        return "redirect:/login";
    }

    @PostMapping("/get-info-login-user")
    @ResponseBody
    public UserInfoDto getInfoByToken(HttpServletResponse response, HttpSession session, @RequestBody RequestUserInfoDto token) throws IOException {
        Map<String, Object> data = jwtTokenProvider.getDataFromJWT(token.getToken());
        String username= (String) data.get(JwtKey.USERNAME);
        if (!username.equalsIgnoreCase((String) session.getAttribute(JwtKey.USERNAME))) {
            throw new AccessDeniedException("Not Permission");
        }
        Optional<User> user = userRepository.findByEmail((String) data.get(JwtKey.USERNAME));
        if (user.isPresent()) {
            User u = user.get();
            return new UserInfoDto(u.getId(), u.getEmail(), u.getRole().name());
        } else {
            throw new AccessDeniedException("Not Permission");
        }
    }
}
