package com.alleyz.school.admin.repository;

import com.alleyz.school.admin.entity.TblTeacher;
import com.alleyz.school.admin.projections.Teacher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

/**
 * Created by alleyz on 2017/5/18 0018.
 *
 */
@RepositoryRestResource(collectionResourceRel = "teacher", path = "teacher", excerptProjection = Teacher.class)
public interface TeacherRepository extends CrudRepository<TblTeacher, Integer> {
    List<TblTeacher> findByIsAdmin(@Param("isAdmin") int isAdmin);

    List<TblTeacher> findByLoginCodeAndPassword(String loginUserCode, String password);

}
