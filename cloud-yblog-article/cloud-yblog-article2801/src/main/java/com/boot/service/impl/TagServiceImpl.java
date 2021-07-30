package com.boot.service.impl;

import com.boot.dao.TagMapper;
import com.boot.pojo.tag;
import com.boot.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TagServiceImpl implements TagService {

    @Autowired
    private TagMapper tagMapper;

    @Override
    public void addTag(tag tag) {
        tagMapper.addTag(tag);
    }

    @Override
    public void changeTagByTagNameDecr(String tagName) {
        tagMapper.changeTagByTagNameDecr(tagName);
    }

    @Override
    public void changeTagByTagNameIncr(String tagName) {
        tagMapper.changeTagByTagNameIncr(tagName);
    }

    @Override
    public List<tag> selectAllTag() {
        return tagMapper.selectAllTag();
    }

    @Override
    public void insertTag(String tagName) {
        tagMapper.insertTag(tagName);
    }

    @Override
    public List<tag> selectTags_echarts() {
        return tagMapper.selectTags_echarts();
    }

    @Override
    public List<tag> selectTags_limit8() {
        return tagMapper.selectTags_limit8();
    }

    @Override
    public int selectTagCount() {
        return tagMapper.selectTagCount();
    }
}
