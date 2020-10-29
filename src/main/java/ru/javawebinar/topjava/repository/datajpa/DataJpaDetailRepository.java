package ru.javawebinar.topjava.repository.datajpa;

import org.springframework.stereotype.Repository;
import ru.javawebinar.topjava.model.Detail;
import ru.javawebinar.topjava.repository.DetailRepository;

@Repository
public class DataJpaDetailRepository implements DetailRepository {

    private final CrudDetailRepository repository;

    public DataJpaDetailRepository(CrudDetailRepository repository) {
        this.repository = repository;
    }

    @Override
    public Detail save(Detail detail) {
        return repository.save(detail);
    }

    @Override
    public boolean delete(int id) {
        return repository.delete(id) != 0;
    }

    @Override
    public Detail get(int id) {
        return repository.findById(id).orElse(null);
    }
}
