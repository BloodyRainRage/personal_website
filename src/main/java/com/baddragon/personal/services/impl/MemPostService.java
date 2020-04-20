package com.baddragon.personal.services.impl;

import com.baddragon.personal.dto.Post;
import com.baddragon.personal.services.api.PostService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class MemPostService implements PostService {
    private List<Post> posts = new ArrayList<>(Arrays.asList(
            Post.builder()
                    .title("First")
                    .body("first body")
                    .img("images/1.gif")
                    .tags(Arrays.asList("qwe", "ewq"))
                    .build(),
            Post.builder()
                    .title("Second")
                    .body("second body")
                    .img("images/2.png")
                    .tags(Arrays.asList("eeee", "wwwwewq", "ccc"))
                    .build()
    ));

    @Override
    public List<Post> all(String query) {
        return query != null && !query.isEmpty() ? posts.stream().filter(post ->
                post.getTags().toString().toLowerCase().matches(".*" + query.toLowerCase() + ".*"))
                .collect(Collectors.toList())
        : posts;
    }

}
