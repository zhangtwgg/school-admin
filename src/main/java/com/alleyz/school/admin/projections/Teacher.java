package com.alleyz.school.admin.projections;

import com.alleyz.school.admin.entity.TblTeacher;
import org.springframework.data.rest.core.config.Projection;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Id;

/**
 * Created by alleyz on 2017/5/20 0020.
 */
@Projection(name = "IdTeacher", types = TblTeacher.class)
public interface Teacher {

    int getId();

     String getUserCode();

     String getLoginCode();

     String getName();

     String getSex();

     String getDep();

     String getBirthday();
     String getEdu();

     String getEntryTime();

     String getPhone();

     String getAddress();

     String getPassword();

     Integer getIsAdmin();
}
