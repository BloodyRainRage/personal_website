package com.baddragon.personal.services.api;

import com.baddragon.personal.domain.Post;
import com.baddragon.personal.dto.PostDto;

import java.util.List;

public interface PostService {

     List<PostDto> all(String query);

}
