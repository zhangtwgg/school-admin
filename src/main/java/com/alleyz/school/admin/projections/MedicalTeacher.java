package com.alleyz.school.admin.projections;

import com.alleyz.school.admin.entity.TblMedcial;
import com.alleyz.school.admin.entity.TblTeacher;
import org.springframework.data.rest.core.config.Projection;

/**
 * Created by alleyz on 2017/5/20 0020.
 */
@Projection(name = "medicalTeacher",types = TblMedcial.class)
public interface MedicalTeacher {
    int getId();
    String getPayTime();
    String getPayCount();
    String getMedMonth();
    TblTeacher getTeacher();
}
