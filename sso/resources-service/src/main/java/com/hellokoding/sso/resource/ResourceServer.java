package com.hellokoding.sso.resource;

import com.hellokoding.sso.resource.config.JwtFilter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;

import java.util.Collections;

@SpringBootApplication
public class ResourceServer {

    public static void main(String[] args) throws Exception {
        SpringApplication.run(ResourceServer.class, args);
    }
}

