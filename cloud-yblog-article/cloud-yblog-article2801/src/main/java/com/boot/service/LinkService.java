package com.boot.service;

import com.boot.pojo.link;

import java.util.List;

public interface LinkService {

    List<link> selectAllLink(); //查询所有友链

    void updateLink(link link); //修改友链

    void insertLink(link link); //添加友链

    void deleteLink(int id); //删除友链

    int linkCount();

    List<link> selectLinkByTitle(String title);

    int selectCountByTitle(String title);
}
