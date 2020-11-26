package ru.javawebinar.topjava.repository;

import ru.javawebinar.topjava.model.Cart;

import java.util.List;

public interface BasketRepository {
    Cart save(Cart cart);

    boolean delete(int id);

    List<Cart> findAllByUserId(int userId);

    boolean deleteAllByUserId(int userId);
}
