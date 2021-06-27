package com.hellokoding.sso.resource.dto;

import java.util.List;

public class NewsDto {
    private String title;
    private List<String> content;
    private String img;

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public NewsDto(String title, List<String> content, String img) {
        this.title = title;
        this.content = content;
        this.img = img;
    }

    public NewsDto() {
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<String> getContent() {
        return content;
    }

    public void setContent(List<String> content) {
        this.content = content;
    }
}
