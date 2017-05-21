package com.alleyz.school.admin.entity;

import javax.persistence.*;

/**
 * Created by alleyz on 2017/5/19 0019.
 */
@Entity
@Table(name = "tbl_check", schema = "alleyz", catalog = "")
public class TblCheck {
    private int id;
    private Integer userId;
    private String item;
    private String result;
    private String checkTime;
    private TblTeacher teacher;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "user_id")
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
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
    public String getCheckTime() {
        return checkTime;
    }

    public void setCheckTime(String checkTime) {
        this.checkTime = checkTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TblCheck tblCheck = (TblCheck) o;

        if (id != tblCheck.id) return false;
        if (userId != null ? !userId.equals(tblCheck.userId) : tblCheck.userId != null) return false;
        if (item != null ? !item.equals(tblCheck.item) : tblCheck.item != null) return false;
        if (result != null ? !result.equals(tblCheck.result) : tblCheck.result != null) return false;
        if (checkTime != null ? !checkTime.equals(tblCheck.checkTime) : tblCheck.checkTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result1 = id;
        result1 = 31 * result1 + (userId != null ? userId.hashCode() : 0);
        result1 = 31 * result1 + (item != null ? item.hashCode() : 0);
        result1 = 31 * result1 + (result != null ? result.hashCode() : 0);
        result1 = 31 * result1 + (checkTime != null ? checkTime.hashCode() : 0);
        return result1;
    }
    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public TblTeacher getTeacher() {
        return teacher;
    }

    public void setTeacher(TblTeacher teacher) {
        this.teacher = teacher;
    }
}
