package com.tunedo.tunedo.repositories;

import org.springframework.stereotype.Repository;

import com.tunedo.tunedo.models.Statistic;

@Repository
public interface StatisticsRepository extends BaseRepository<Statistic, Long> {}