package com.tunedo.tunedo.repositories;

import org.springframework.stereotype.Repository;

import com.tunedo.tunedo.models.Song;

@Repository
public interface SongRepository extends BaseRepository<Song, Long> {}