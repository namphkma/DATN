package com.hellokoding.sso.auth.dto;

import lombok.Data;

@Data
public class UserSigninDto {
    private String username;
    private String password;
    private String resource;
}
