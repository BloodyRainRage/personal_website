package com.baddragon.personal.services.impl;

import com.baddragon.personal.domain.Post;
import com.baddragon.personal.dto.PostDto;
import com.baddragon.personal.jpa.PostRepository;
import com.baddragon.personal.services.api.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class DatabasePostService implements PostService {
    @Autowired
    private PostRepository postRepository;

    public DatabasePostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }


    //Returns all posts as List of PostDto
    //if query is not empty shows all posts that containing query
    @Override
    public List<PostDto> all(String query) {
        //List<Post> posts = postRepository.findAllByOrderByIdDesc();
        List<Post> posts = postRepository.findAll(Sort.by(Sort.Direction.DESC, "id"));
        return query != null && !query.isEmpty() ? posts.stream().map(post -> PostDto.builder().title(post.getTitle())
                .body(post.getBody())
                .creator(post.getCreator())
                .img(post.getImg())
                .tags(post.getTags())
                .build()
        ).collect(Collectors.toList()).stream().filter(post ->
                post.getTags().toString().toLowerCase().matches(".*" + query.toLowerCase() + ".*"))
                .collect(Collectors.toList())

                : posts.stream().map(post -> PostDto.builder().title(post.getTitle())
                .body(post.getBody())
                .creator(post.getCreator())
                .img(post.getImg())
                .tags(post.getTags())
                .build()
        ).collect(Collectors.toList());
    }

    //used to load posts to database
//    @PostConstruct
//    public void setup(){
//        postRepository.saveAll(Arrays.asList(
//                Post.builder()
//                        .title("First")
//                        .body("first body")
//                        .img("images/1.gif")
//                        .tags("qwe ewq")
//                        .creator("PiskaDrakona")
//                        .build(),
//                Post.builder()
//                        .title("Second")
//                        .body("second body")
//                        .img("images/2.png")
//                        .tags("eeee wwwwewq ccc")
//                        .creator("AnotherPiska")
//                        .build()
//                )
//        );
//    }
}
