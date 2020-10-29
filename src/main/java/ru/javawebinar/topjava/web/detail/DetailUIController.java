package ru.javawebinar.topjava.web.detail;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import ru.javawebinar.topjava.model.Detail;

@RestController
@RequestMapping("/ajax/admin/details")
public class DetailUIController extends AbstractDetailsController {

    @Override
    @GetMapping(value = "/{id}")
    public Detail get(@PathVariable int id) {
        return super.get(id);
    }

    @Override
    @DeleteMapping(value = "/{id}")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void delete(@PathVariable int id) {
        super.delete(id);
    }

    @PostMapping
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void createOrUpdate(Detail detail) {
        if (detail.isNew()){
            super.create(detail);
        }else {
            super.update(detail, detail.getId());
        }
    }
}
