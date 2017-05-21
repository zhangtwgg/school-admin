package com.alleyz.school.admin.repository;

import com.alleyz.school.admin.entity.TblSalary;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

/**
 * Created by alleyz on 2017/5/18 0018.
 */
@RepositoryRestResource(collectionResourceRel = "salary", path = "salary")
public interface SalaryRepository extends CrudRepository<TblSalary, Integer> {
    List<TblSalary> findAllByUserId(@Param("userId") Integer userId);
}
