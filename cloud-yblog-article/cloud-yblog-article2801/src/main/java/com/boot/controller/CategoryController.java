package com.boot.controller;

import com.alibaba.fastjson.JSON;
import com.boot.pojo.*;
import com.boot.service.ArticleService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;

/** @author 游政杰  */
@Controller
@Api("客户端分类")
@RequestMapping(path = "/category")
public class CategoryController {

  @Autowired private ArticleService articleService;

  @ResponseBody
  @RequestMapping(path = "/data")
  public String CategoryData(String categoryName) {

    List<Article> articles = articleService.queryArticleByCategoryName(categoryName);

    String jsonString = JSON.toJSONString(articles);

    return jsonString;
  }
}
