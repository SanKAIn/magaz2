package ru.javawebinar.topjava.service;

import org.springframework.stereotype.Service;
import ru.javawebinar.topjava.model.Cart;
import ru.javawebinar.topjava.repository.BasketRepository;

import java.util.List;

@Service
public class BasketService {

    private final BasketRepository repository;

    public BasketService(BasketRepository repository) {
        this.repository = repository;
    }

    public List<Cart> getAll(int userId){
        return repository.findAllByUserId(userId);
    }

    public boolean deleteAll(int userId){
        return repository.deleteAllByUserId(userId);
    }

    public Cart addToBasket(Cart cart){
        return repository.save(cart);
    }

    public boolean delete(int id){
        return repository.delete(id);
    }

}
