package com.sso.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

@RestController
@RequestMapping("/sso")
public class SsoController {

    @GetMapping("/verify_sso_token")
    public String verifySsoToken(@RequestParam("token") String token){
        System.out.println(token);
        return "oke";
    }

    @GetMapping("/user/me")
    public Principal user(Principal principal) {
        return principal;
    }
}
