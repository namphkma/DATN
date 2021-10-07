package com.hellokoding.sso.resource.entity;

import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.List;

@Table
@Entity
public class Articles {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String html_dir;
    private Long extra_id;
    @OneToOne
    @JoinColumn(name = "url_id", referencedColumnName = "id")
    private Url url;
    private String content;
    private String title;
    private String images;
    private String json_raw_content;

    @ManyToOne
    @JoinTable(name="articles_tags",
            joinColumns = @JoinColumn(name="article_id"),
            inverseJoinColumns = @JoinColumn(name = "tag_id")
    )
    private Tags tag;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getHtml_dir() {
        return html_dir;
    }

    public void setHtml_dir(String html_dir) {
        this.html_dir = html_dir;
    }

    public Long getExtra_id() {
        return extra_id;
    }

    public void setExtra_id(Long extra_id) {
        this.extra_id = extra_id;
    }

    public Url getUrl() {
        return url;
    }

    public void setUrl(Url url) {
        this.url = url;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getJson_raw_content() {
        return json_raw_content;
    }

    public void setJson_raw_content(String json_raw_content) {
        this.json_raw_content = json_raw_content;
    }

    public Tags getTag() {
        return tag;
    }

    public void setTag(Tags tag) {
        this.tag = tag;
    }
}
