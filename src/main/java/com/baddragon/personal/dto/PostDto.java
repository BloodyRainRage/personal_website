package com.baddragon.personal.dto;

import com.baddragon.personal.domain.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;


//PostDto (Data transfer object) is used to represent a post from database
@Data //generate get/set automatically
@Builder //add builder realisation to this class
@NoArgsConstructor
@AllArgsConstructor
public class PostDto {

    private String title;
  //  private String creator;
    private List<String> tags;
    private String body;
    private String img;

    private User author;

    public String getAuthorName(){
        return author != null ? author.getUsername()
                : "none";
    }

}
