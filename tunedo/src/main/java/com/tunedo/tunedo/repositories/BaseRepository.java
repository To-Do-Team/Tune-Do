package com.tunedo.tunedo.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BaseRepository<T, ID> extends CrudRepository<T, ID> { //extends Serializable
    List<T> findAll();
}