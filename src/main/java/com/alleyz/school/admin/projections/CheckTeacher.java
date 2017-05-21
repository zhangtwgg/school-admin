package com.alleyz.school.admin.projections;

import com.alleyz.school.admin.entity.TblMedcial;
import com.alleyz.school.admin.entity.TblTeacher;
import org.springframework.data.rest.core.config.Projection;

/**
 * Created by alleyz on 2017/5/21 0021.
 */
@Projection(name = "checkTeacher",types = TblMedcial.class)
 public interface CheckTeacher {

     int getId();
     Integer getUserId();
     String getItem();
     String getResult();
     String getCheckTime();
     TblTeacher getTeacher();
}
