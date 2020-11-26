package ru.javawebinar.topjava.web.detail;

import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import ru.javawebinar.topjava.model.Cart;
import ru.javawebinar.topjava.model.Detail;
import ru.javawebinar.topjava.model.TransferObject;
import ru.javawebinar.topjava.web.SecurityUtil;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/all")
public class DetailUIController extends AbstractDetailsController {

    @Override
    @GetMapping(value = "/{id}")
    public Detail get(@PathVariable int id) {
        return super.get(id);
    }

    @Override
    @DeleteMapping(value = "/admin/{id}")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void delete(@PathVariable int id) {
        super.delete(id);
    }

    @PostMapping(value = "/admin")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void createOrUpdate(@Valid Detail detail) {
        if (detail.isNew()){
            super.create(detail);
        }else {
            super.update(detail, detail.getId());
        }
    }

    @Override
    @GetMapping
    public List<Detail> getAll(HttpServletRequest request) {
        return super.getAll(request);
    }

    @GetMapping(value = "/filter")
    public List<Detail> getFiltered(HttpServletRequest request){
        return super.filterByParameters(request);
    }

    @GetMapping(value = "/mFilter")
    public TransferObject getMFilter(HttpServletRequest request){
        return super.filterPar(request);
    }

    @GetMapping(value = "/filter/count")
    public int getCount(HttpServletRequest request){
        int d = super.filterCount(request);
        return d;
    }

    @GetMapping(value = "/find")
    public List<Detail> find(@Param("key") String key, HttpServletRequest request){
        return super.findKeyWord(key, request);
    }

    @GetMapping(value = "/basket")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addToBasket(HttpServletRequest request){
        String detailId = request.getParameter("detailId");
        Integer id = Integer.parseInt(detailId);
        String requestedSessionId = request.getRequestedSessionId();
        Cart cart = new Cart();
        cart.setDetailId(id);
        Integer userId = SecurityUtil.korzina();
        cart.setUserId(userId);
        cart.setSession(requestedSessionId);
        super.addTo(cart);
    }
}
