package ru.javawebinar.topjava.service;

import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import ru.javawebinar.topjava.model.Detail;
import ru.javawebinar.topjava.repository.DetailRepository;

import static ru.javawebinar.topjava.util.ValidationUtil.checkNotFoundWithId;

@Service
public class DetailService {

    private final DetailRepository repository;

    public DetailService(DetailRepository repository) {
        this.repository = repository;
    }

    public Detail get(int id){
        return checkNotFoundWithId(repository.get(id), id);
    }

    public void delete(int id, int userId) {
        checkNotFoundWithId(repository.delete(id), id);
    }

    public void update(Detail detail, int userId){
        Assert.notNull(detail, "DETAIL MUST NOT BE NULL");
        checkNotFoundWithId(repository.save(detail), detail.id());
    }

    public Detail create(Detail detail){
        Assert.notNull(detail, "DETAIL MUST NOT BE NULL");
        return repository.save(detail);
    }
}
