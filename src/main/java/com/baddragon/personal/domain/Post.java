package com.baddragon.personal.domain;

import lombok.*;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Entity
@Table(name = "posts")
//@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String title;
   // private String creator;
    private String tags;
    private String body;
    private String img;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

//    public String getCreator() {
//        return creator;
//    }
//
//    public void setCreator(String creator) {
//        this.creator = creator;
//    }

    public String getAuthorName(){
        return author != null ? author.getUsername()
                : "none";
    }

    //returns a list of tags
    public List<String> getTags() {
        List<String> splitedTags = new ArrayList<String>(Arrays.asList(tags.split(" ")));
        return splitedTags;
    }

    //setting list of tags
    public void setTags(List<String> tags) {
        String result = "";
        for (var tag: tags) {
            result += tag;
        }
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

}
