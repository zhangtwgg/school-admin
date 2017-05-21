package com.alleyz.school.admin.repository;

import com.alleyz.school.admin.entity.TblAttend;
import com.alleyz.school.admin.projections.AttendTeacher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

/**
 * Created by alleyz on 2017/5/18 0018.
 */
@RepositoryRestResource(collectionResourceRel = "attend", path = "attend", excerptProjection = AttendTeacher.class)
public interface AttendRepository extends JpaRepository< TblAttend, Integer> {
    List<TblAttend> findAllByUserId(@Param("userId") Integer userId);
}
