package com.hellokoding.sso.auth.config;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@Configuration
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Config {

    @Value("${app.jwtSecret}")
    private String jwtKey;

}
