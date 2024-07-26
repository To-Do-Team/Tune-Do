package com.tunedo.tunedo.services;

import org.springframework.stereotype.Service;

import com.tunedo.tunedo.models.Statistic;
import com.tunedo.tunedo.repositories.StatisticsRepository;

@Service
public class StatisticsService extends BaseService<Statistic>{
    private final StatisticsRepository repository;

    public StatisticsService(StatisticsRepository repository) {
        super(repository);
        this.repository = repository;
    }

}
