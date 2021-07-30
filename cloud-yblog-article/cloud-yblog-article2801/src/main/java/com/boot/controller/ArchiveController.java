package com.boot.controller;

import com.alibaba.fastjson.JSON;
import com.boot.pojo.*;
import com.boot.service.ArchiveService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;

/** @author 游政杰 */
@Api(value = "文章归档控制器")
@Controller
@RequestMapping(path = "/archive")
public class ArchiveController {

  @Autowired
  private ArchiveService archiveService;


  @ResponseBody
  @GetMapping(path = "/data")
  public String archiveData(String date) {

    List<Article> articles = archiveService.selectArticleByarchiveTime(date);
    String jsonData = JSON.toJSONString(articles);
    return jsonData;
  }

}
