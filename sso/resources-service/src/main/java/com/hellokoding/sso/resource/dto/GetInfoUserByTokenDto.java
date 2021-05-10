package com.hellokoding.sso.resource.dto;

public class GetInfoUserByTokenDto {
    private String token;

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public GetInfoUserByTokenDto() {
    }

    public GetInfoUserByTokenDto(String token) {
        this.token = token;
    }
}
