package com.boot.service;

import com.boot.pojo.like;

public interface LikeService {


    //点赞
    boolean likeArticle(like like);


    String selectLikeExsit(String username, int articleid);
}
