package com.hellokoding.sso.resource.entity;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Entity
public class Url {
    public enum URL_STATUS {DONE,ERROR,PENDING}
    @Id
    private Long id;
    private String domain;
    private String path;
    @NotNull
    @Enumerated(EnumType.STRING)
    private URL_STATUS status;
    private String home_link;
    private String config;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public URL_STATUS getStatus() {
        return status;
    }

    public void setStatus(URL_STATUS status) {
        this.status = status;
    }

    public String getHome_link() {
        return home_link;
    }

    public void setHome_link(String home_link) {
        this.home_link = home_link;
    }

    public String getConfig() {
        return config;
    }

    public void setConfig(String config) {
        this.config = config;
    }
}
