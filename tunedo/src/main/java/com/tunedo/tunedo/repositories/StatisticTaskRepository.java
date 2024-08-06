package com.tunedo.tunedo.repositories;

import java.util.List;

import com.tunedo.tunedo.models.Statistic;
import com.tunedo.tunedo.models.StatisticTask;

public interface StatisticTaskRepository extends BaseRepository<StatisticTask>{

    List<StatisticTask> findByStatistic(Statistic statistic);
    
}
