package ru.javawebinar.topjava.repository.datajpa;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;
import ru.javawebinar.topjava.model.Detail;


@Transactional(readOnly = true)
public interface CrudDetailRepository extends PagingAndSortingRepository<Detail, Integer> {

    @Modifying
    @Transactional
    @Query("DELETE FROM Detail d WHERE d.id=:id")
    int delete(@Param("id") int id);

    @Query("SELECT d FROM Detail d WHERE CONCAT(d.id, d.partName, d.kod, d.amount) LIKE %?1%")
    Page<Detail> findAll(String key, Pageable pageable);
}
