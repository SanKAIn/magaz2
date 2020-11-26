package ru.javawebinar.topjava.repository.datajpa;

import org.springframework.stereotype.Repository;
import ru.javawebinar.topjava.model.Cart;
import ru.javawebinar.topjava.repository.BasketRepository;

import java.util.List;

@Repository
public class DataJpaBasketRepository implements BasketRepository {

    private final CrudBasketRepository repository;

    public DataJpaBasketRepository(CrudBasketRepository repository) {
        this.repository = repository;
    }

    @Override
    public Cart save(Cart cart) {
        return repository.save(cart);
    }

    @Override
    public boolean delete(int id) {
        return repository.delete(id) != 0;
    }

    @Override
    public List<Cart> findAllByUserId(int userId) {
        return repository.findAllByUserId(userId);
    }

    @Override
    public boolean deleteAllByUserId(int userId) {
        return repository.deleteAllByUserId(userId) != 0;
    }
}
