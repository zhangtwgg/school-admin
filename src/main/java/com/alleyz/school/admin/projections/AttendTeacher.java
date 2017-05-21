package com.alleyz.school.admin.projections;

import com.alleyz.school.admin.entity.TblAttend;
import com.alleyz.school.admin.entity.TblMedcial;
import com.alleyz.school.admin.entity.TblTeacher;
import org.springframework.data.rest.core.config.Projection;

/**
 * Created by alleyz on 2017/5/21 0021.
 */
@Projection(name = "AttendTeacher",types = TblAttend.class)
 public interface AttendTeacher {

     int getId();

     String getAttendMonth();

     Integer getAttendNormal();

     Double getLateCount();

     Double getEarlyCount();

     Double getSickCount();

     Double getLeaveCount();

     Double getAbsentCount();

     int getUserId();

     TblTeacher getTeacher();
}
