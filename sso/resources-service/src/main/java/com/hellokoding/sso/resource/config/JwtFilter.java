package com.hellokoding.sso.resource.config;

import com.hellokoding.sso.resource.dto.UserInfoDto;
import org.springframework.http.*;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

public class JwtFilter extends OncePerRequestFilter {
    private static final String jwtTokenCookieName = "JWT_TOKEN";
    private static final String signingKey = "signingKeyab";

    private final RestTemplate restTemplate;

    public JwtFilter(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, FilterChain filterChain) throws ServletException, IOException {
        Map<String, Object> claims = JwtUtil.getSubject(httpServletRequest, jwtTokenCookieName, signingKey);
        String token = CookieUtil.getValue(httpServletRequest, jwtTokenCookieName);
        String authService = this.getFilterConfig().getInitParameter("services.auth");
        if (Objects.isNull(claims) || claims.get("username") == null) {
            httpServletResponse.sendRedirect(authService + "?redirect=" + httpServletRequest.getRequestURL());
        }else{
            String getInfoUrl = this.getFilterConfig().getInitParameter("services.info-user");
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);
            headers.add("Cookie", "JSESSIONID=" + (String) claims.get("session"));
            HttpEntity entity = new HttpEntity(Collections.singletonMap("token", token), headers);
            try {
                ResponseEntity<UserInfoDto> result = restTemplate.exchange(getInfoUrl, HttpMethod.POST, entity, UserInfoDto.class);
                httpServletRequest.setAttribute("username", claims.get("username"));
                UserInfoDto loginUser = result.getBody();
                UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(loginUser, null, Collections.singleton(new SimpleGrantedAuthority(loginUser.getRole())));
                authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(httpServletRequest));
                SecurityContextHolder.getContext().setAuthentication(authentication);
                filterChain.doFilter(httpServletRequest, httpServletResponse);
            }catch (Exception e) {
                CookieUtil.clear(httpServletResponse,jwtTokenCookieName);
                httpServletResponse.sendRedirect(authService + "?redirect=" + httpServletRequest.getRequestURL());
            }
        }
    }
}
