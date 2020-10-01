package com.baddragon.personal.controller;

import com.baddragon.personal.services.api.PostService;
import com.baddragon.personal.services.impl.DatabasePostService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class WebsiteController {

    private final PostService postService;

    public WebsiteController(@Qualifier("databasePostService") PostService postService) {
        this.postService = postService;
    }



    @GetMapping("/")
    public String mainPage(Model model, @RequestParam(required = false) String query){
        model.addAttribute("posts", postService.all(query));
        return "blog_posts";
    }
    
    @GetMapping("/about")
    public  String aboutPage(Model model, @RequestParam(required = false) String query){
        return "about";
    }


    @GetMapping("/controlpage")
    public String controlPage(){
        return "controlpage";
    }
}
