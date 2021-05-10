package com.hellokoding.sso.auth.controller;

import com.hellokoding.sso.auth.dto.UserInfoDto;
import com.hellokoding.sso.auth.dto.UserSigninDto;
import com.hellokoding.sso.auth.dto.request.RequestUserInfoDto;
import com.hellokoding.sso.auth.entity.Resource;
import com.hellokoding.sso.auth.entity.User;
import com.hellokoding.sso.auth.errors.EntityNotFoundException;
import com.hellokoding.sso.auth.repository.ResourceRepository;
import com.hellokoding.sso.auth.repository.UserRepository;
import com.hellokoding.sso.auth.security.UserService;
import org.springframework.context.annotation.Scope;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Optional;

@RestController
@RequestMapping("/api/auth")
public class RestLoginController {

    private final UserRepository userRepository;
    private final ResourceRepository resourceRepository;
    private final PasswordEncoder passwordEncoder;
    private final UserService userService;

    public RestLoginController(UserRepository userRepository, ResourceRepository resourceRepository, PasswordEncoder passwordEncoder, UserService userService) {
        this.userRepository = userRepository;
        this.resourceRepository = resourceRepository;
        this.passwordEncoder = passwordEncoder;
        this.userService = userService;
    }

    @PostMapping("/signin")
    public User signin(@RequestBody UserSigninDto userSigninDto){
        if(resourceRepository.existsResourceByName(userSigninDto.getResource())){
            User u = new User();
            u.setEmail(userSigninDto.getUsername());
            u.setPassword(passwordEncoder.encode(userSigninDto.getPassword()));
            u.setRole(User.Role.USER);
            return userRepository.save(u);
        }else {
            throw new EntityNotFoundException(Resource.class, "name", userSigninDto.getResource());
        }
    }
}
