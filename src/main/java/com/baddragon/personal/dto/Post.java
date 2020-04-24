package com.baddragon.personal.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor

public class Post {
//    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String title;
    private List<String> tags;
    private String body;
    private String img;

}
