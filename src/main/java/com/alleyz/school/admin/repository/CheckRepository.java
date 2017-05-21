package com.alleyz.school.admin.repository;

import com.alleyz.school.admin.entity.TblAttend;
import com.alleyz.school.admin.entity.TblCheck;
import com.alleyz.school.admin.projections.CheckTeacher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

/**
 * Created by alleyz on 2017/5/18 0018.
 */
@RepositoryRestResource(collectionResourceRel = "check", path = "check", excerptProjection = CheckTeacher.class)
public interface CheckRepository extends JpaRepository<TblCheck, Integer> {
    List<TblCheck> findAllByUserId(@Param("userId") Integer userId);
}
