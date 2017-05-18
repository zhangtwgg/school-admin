package com.alleyz.school.admin.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created by alleyz on 2017/5/18 0018.
 */
@Entity
@Table(name = "tbl_check")
public class TblCheck implements Serializable {
    private int id;
    private String item;
    private String result;
    private Timestamp checkTime;
    private TblTeacher tblTeacherByUserId;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "item")
    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    @Basic
    @Column(name = "result")
    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    @Basic
    @Column(name = "check_time")
    public Timestamp getCheckTime() {
        return checkTime;
    }

    public void setCheckTime(Timestamp checkTime) {
        this.checkTime = checkTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TblCheck tblCheck = (TblCheck) o;

        if (id != tblCheck.id) return false;
        if (item != null ? !item.equals(tblCheck.item) : tblCheck.item != null) return false;
        if (result != null ? !result.equals(tblCheck.result) : tblCheck.result != null) return false;
        if (checkTime != null ? !checkTime.equals(tblCheck.checkTime) : tblCheck.checkTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result1 = id;
        result1 = 31 * result1 + (item != null ? item.hashCode() : 0);
        result1 = 31 * result1 + (result != null ? result.hashCode() : 0);
        result1 = 31 * result1 + (checkTime != null ? checkTime.hashCode() : 0);
        return result1;
    }

    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    public TblTeacher getTblTeacherByUserId() {
        return tblTeacherByUserId;
    }

    public void setTblTeacherByUserId(TblTeacher tblTeacherByUserId) {
        this.tblTeacherByUserId = tblTeacherByUserId;
    }
}
