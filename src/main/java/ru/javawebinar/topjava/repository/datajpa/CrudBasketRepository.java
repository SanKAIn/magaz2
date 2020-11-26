package ru.javawebinar.topjava.repository.datajpa;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;
import ru.javawebinar.topjava.model.Cart;

import java.util.List;

@Transactional(readOnly = true)
public interface CrudBasketRepository extends PagingAndSortingRepository<Cart, Integer> {

    @Modifying
    @Transactional
    @Query("DELETE FROM Cart b WHERE b.id = :id")
    int delete(@Param("id") int id);

    List<Cart> findAllByUserId(int userId);

    int deleteAllByUserId(int userId);
}
