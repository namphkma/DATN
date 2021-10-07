package com.hellokoding.sso.auth.dto.request;

import lombok.Data;

@Data
public class UserSigninDto {
    private String username;
    private String password;
    private String resource;
}
