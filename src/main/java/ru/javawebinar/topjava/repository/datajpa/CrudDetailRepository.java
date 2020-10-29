package ru.javawebinar.topjava.repository.datajpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;
import ru.javawebinar.topjava.model.Detail;


@Transactional(readOnly = true)
public interface CrudDetailRepository extends JpaRepository<Detail, Integer> {

    @Modifying
    @Transactional
    @Query("DELETE FROM Detail d WHERE d.id=:id")
    int delete(@Param("id") int id);
}
