package ru.javawebinar.topjava.web.detail;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import ru.javawebinar.topjava.model.Detail;
import ru.javawebinar.topjava.service.DetailService;
import ru.javawebinar.topjava.web.SecurityUtil;

import static ru.javawebinar.topjava.util.ValidationUtil.assureIdConsistent;
import static ru.javawebinar.topjava.util.ValidationUtil.checkNew;

public class AbstractDetailsController {
    private final Logger log = LoggerFactory.getLogger(getClass());

    @Autowired
    private DetailService service;

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
}
