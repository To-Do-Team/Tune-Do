package com.tunedo.tunedo.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.tunedo.tunedo.models.Statistic;
import com.tunedo.tunedo.models.StatisticTask;
import com.tunedo.tunedo.repositories.StatisticTaskRepository;

@Service
public class StatisticTaskService extends BaseService<StatisticTask>{
    
    private final StatisticTaskRepository repository;

    public StatisticTaskService(StatisticTaskRepository repository) {
        super(repository);
        this.repository = repository;
    }


    public List<StatisticTask> findByStatistic(Statistic statistic) {
        return repository.findByStatistic(statistic);
    }
}
