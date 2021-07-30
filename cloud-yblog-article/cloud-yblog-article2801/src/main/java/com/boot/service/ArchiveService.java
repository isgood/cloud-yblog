package com.boot.service;

import com.boot.pojo.Article;
import com.boot.pojo.archive;

import java.util.List;

public interface ArchiveService {

    List<archive> selectAllArchiveGroup();  //进行归档分组

    //注意：这是查询文章信息
    List<Article> selectArticleByarchiveTime(String archiveTime); //根据归档时间查询文章


}
