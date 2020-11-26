package ru.javawebinar.topjava.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import ru.javawebinar.topjava.model.Detail;

import java.util.List;

public interface DetailRepository {
    Detail save(Detail detail);

    boolean delete(int id);

    Detail get(int id);

    Page<Detail> getAll(Pageable pageable);

    List<Detail> filter(String parameters, Pageable pageable);

    int filterCount(String parameters);

    List<Detail> findAll(String key, Pageable pageable);
}
