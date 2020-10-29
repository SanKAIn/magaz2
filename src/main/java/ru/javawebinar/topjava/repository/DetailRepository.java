package ru.javawebinar.topjava.repository;

import ru.javawebinar.topjava.model.Detail;

public interface DetailRepository {
    Detail save(Detail detail);

    boolean delete(int id);

    Detail get(int id);
}
