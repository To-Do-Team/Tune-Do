package com.tunedo.tunedo.services;

import org.springframework.stereotype.Service;

import com.tunedo.tunedo.models.Song;
import com.tunedo.tunedo.repositories.BaseRepository;

@Service
public class SongService extends BaseService<Song> {

    public SongService(BaseRepository<Song> repository) {
        super(repository);
    }
}