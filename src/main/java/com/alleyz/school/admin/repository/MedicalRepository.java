package com.alleyz.school.admin.repository;

import com.alleyz.school.admin.entity.TblCheck;
import com.alleyz.school.admin.entity.TblMedcial;
import com.alleyz.school.admin.projections.MedicalTeacher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

/**
 * Created by alleyz on 2017/5/18 0018.
 */
@RepositoryRestResource(collectionResourceRel = "medical", path = "medical", excerptProjection = MedicalTeacher.class)
public interface MedicalRepository extends JpaRepository<TblMedcial, Integer> {
    List<TblMedcial> findAllByUserId(@Param("userId") Integer userId);
}
