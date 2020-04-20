package com.baddragon.personal.services.api;

import com.baddragon.personal.dto.Post;
import java.util.List;

public interface PostService {

     List<Post> all(String query);

}
