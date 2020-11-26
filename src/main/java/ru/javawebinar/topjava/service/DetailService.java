package ru.javawebinar.topjava.service;

import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import ru.javawebinar.topjava.model.Detail;
import ru.javawebinar.topjava.model.TransferObject;
import ru.javawebinar.topjava.repository.DetailRepository;
import ru.javawebinar.topjava.util.DetailUtil;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import static ru.javawebinar.topjava.util.DetailUtil.getPageable;
import static ru.javawebinar.topjava.util.ValidationUtil.checkNotFoundWithId;

@Service
public class DetailService {

    private final DetailRepository repository;
    private final EntityManager em;

    public DetailService(DetailRepository repository, EntityManager em) {
        this.repository = repository;
        this.em = em;
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

    public List<Detail> filter(HttpServletRequest request){
        return repository.filter(DetailUtil.getQuery(request), getPageable(request));
    }

    public TransferObject mFilter(HttpServletRequest request){
        String param = DetailUtil.getQuery(request);
        Pageable pageable = getPageable(request);
        TransferObject to = new TransferObject();
        List<Detail> list = em.createQuery(param, Detail.class).getResultList();
        int listCount = list.size();
        Map<String, String> map = new TreeMap<>();
        final List<Detail> itemsOnPage = list.subList(
                (int)pageable.getOffset(),
                (int)Math.min(list.size(),
                        pageable.getOffset() + pageable.getPageSize()));

        list = new PageImpl<>(itemsOnPage, pageable, list.size()).toList();
        to.setGoods(list.toArray(Detail[]::new));
        to.setOptions(map);
        to.setCountAll(listCount);
        to.setCode("success");
        return to;
    }

    public int filterCount(HttpServletRequest request){
        int d = repository.filterCount(DetailUtil.getQuery(request));
        return d;
    }

    public List<Detail> getAll(HttpServletRequest request){
        return repository.getAll(getPageable(request)).toList();
    }

    public List<Detail> find(String key, HttpServletRequest request){
        List<Detail> list = repository.findAll(key, getPageable(request));
        return list;
    }
}





