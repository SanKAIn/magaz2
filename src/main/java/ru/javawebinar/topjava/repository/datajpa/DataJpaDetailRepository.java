package ru.javawebinar.topjava.repository.datajpa;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import ru.javawebinar.topjava.model.Detail;
import ru.javawebinar.topjava.repository.DetailRepository;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
public class DataJpaDetailRepository implements DetailRepository {

    private final CrudDetailRepository repository;
    private final EntityManager em;

    public DataJpaDetailRepository(CrudDetailRepository repository, EntityManager em) {
        this.repository = repository;
        this.em = em;
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

    @Override
    public Page<Detail> getAll(Pageable pageable) {
        return repository.findAll(pageable);
    }

    @Override
    public List<Detail> filter(String parameters, Pageable pageable) {
        List<Detail> resultList = em.createQuery(parameters, Detail.class).getResultList();
        int kol = resultList.size();
        final List<Detail> itemsOnPage = resultList.subList(
                (int)pageable.getOffset(),
                            (int)Math.min(resultList.size(),
                                        pageable.getOffset() + pageable.getPageSize()));

        resultList = new PageImpl<>(itemsOnPage, pageable, resultList.size()).toList();
        //resultList.forEach(detail -> detail.setTotal(kol));
        return resultList;
    }

    public int filterCount(String parameters){
        int d = em.createQuery(parameters).getResultList().size();
        return d;
    }

    @Override
    public List<Detail> findAll(String key, Pageable pageable) {
        List<Detail> list = repository.findAll(key, pageable).toList();
        return list;
    }
}








