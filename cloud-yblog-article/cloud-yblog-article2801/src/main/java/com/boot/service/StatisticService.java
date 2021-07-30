package com.boot.service;


import com.boot.pojo.Statistic;

public interface StatisticService {



    public int addStatistic(Statistic statistic);


    public int deleteStatisticByArticleId(Integer id);



}
