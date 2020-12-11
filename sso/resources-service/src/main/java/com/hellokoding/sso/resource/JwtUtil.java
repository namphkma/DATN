package com.hellokoding.sso.resource;

import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.Date;

public class JwtUtil {
    public static String generateToken(String signingKey, String subject) {
        long nowMillis = System.currentTimeMillis();
        Date now = new Date(nowMillis);

        JwtBuilder builder = Jwts.builder()
                .setSubject(subject)
                .setIssuedAt(now)
                .signWith(SignatureAlgorithm.HS256, signingKey);

        return builder.compact();
    }

    public static String getSubject(HttpServletRequest httpServletRequest, String jwtTokenCookieName, String signingKey) throws UnsupportedEncodingException {
        String token = CookieUtil.getValue(httpServletRequest, jwtTokenCookieName);
        if(token == null) return null;
        return Jwts.parser().setSigningKey(signingKey.getBytes("UTF-8")).parseClaimsJws(token).getBody().getSubject();
    }
}

