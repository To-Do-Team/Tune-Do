package com.tunedo.tunedo.repositories;

import com.tunedo.tunedo.models.Statistic;
import com.tunedo.tunedo.models.User;

import java.util.List;


public interface StatisticsRepository extends BaseRepository<Statistic> {
    List<Statistic> findByUser(User user);

    Statistic findFirstByUserOrderByCreatedAtDesc(User user);

    Statistic findByIdAndUser(Long id, User user);
}