package ru.javawebinar.topjava.web.detail;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import ru.javawebinar.topjava.model.Cart;
import ru.javawebinar.topjava.model.Detail;
import ru.javawebinar.topjava.model.TransferObject;
import ru.javawebinar.topjava.service.BasketService;
import ru.javawebinar.topjava.service.DetailService;
import ru.javawebinar.topjava.web.SecurityUtil;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

import static ru.javawebinar.topjava.util.ValidationUtil.assureIdConsistent;
import static ru.javawebinar.topjava.util.ValidationUtil.checkNew;

public class AbstractDetailsController {
    private final Logger log = LoggerFactory.getLogger(getClass());

    @Autowired
    private DetailService service;
    @Autowired
    private BasketService basketService;

    public List<Detail> getAll(HttpServletRequest request){
        log.info("getALL detail");
        return service.getAll(request);
    }

    public Detail get(int id){
        log.info("get detail {}", id);
        return service.get(id);
    }

    public void delete(int id){
        log.info("delete detail {}", id);
        service.delete(id, SecurityUtil.authUserId());
    }

    public Detail create(Detail detail){
        checkNew(detail);
        log.info("CrEaTe {}", detail);
        return service.create(detail);
    }

    public void update(Detail detail, int id){
        int userID = SecurityUtil.authUserId();
        assureIdConsistent(detail, id);
        log.info("UpDaTe {}", detail);
        service.update(detail, id);
    }

    public List<Detail> filterByParameters(HttpServletRequest request){
        return service.filter(request);
    }

    public TransferObject filterPar(HttpServletRequest request){
        return service.mFilter(request);
    }

    public int filterCount(HttpServletRequest request){
        return service.filterCount(request);
    }

    public List<Detail> findKeyWord(String param, HttpServletRequest request){

        return service.find(param, request);
    }

    public void addTo(Cart cart){
        checkNew(cart);
        basketService.addToBasket(cart);
    }
}
