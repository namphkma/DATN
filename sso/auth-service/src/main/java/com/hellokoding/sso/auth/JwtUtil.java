package com.hellokoding.sso.auth;

import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class JwtUtil {
    public static String generateToken(String signingKey, final String subject) throws UnsupportedEncodingException {
        System.out.println(
                javax.xml.bind.DatatypeConverter.printBase64Binary(
                        javax.xml.bind.DatatypeConverter.parseBase64Binary(signingKey))+"\n"+signingKey );
        JwtBuilder builder = Jwts.builder()
                .setSubject(subject)
                .signWith(SignatureAlgorithm.HS256, signingKey.getBytes("UTF-8"));

        return builder.compact();
    }

    public static String getSubject(HttpServletRequest httpServletRequest, String jwtTokenCookieName, String signingKey){
        String token = CookieUtil.getValue(httpServletRequest, jwtTokenCookieName);
        if(token == null) return null;
        return Jwts.parser().setSigningKey(signingKey).parseClaimsJws(token).getBody().getSubject();
    }
}
