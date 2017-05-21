package com.alleyz.school.admin.entity;

import com.alibaba.druid.filter.AutoLoad;
import org.springframework.context.annotation.Lazy;

import javax.persistence.*;

/**
 * Created by alleyz on 2017/5/19 0019.
 */
@Entity
@Table(name = "tbl_medcial", schema = "alleyz", catalog = "")
public class TblMedcial {
    private int id;
    private Integer userId;
    private String medMonth;
    private String payCount;
    private String payTime;
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
    @Column(name = "med_month")
    public String getMedMonth() {
        return medMonth;
    }

    public void setMedMonth(String medMonth) {
        this.medMonth = medMonth;
    }

    @Basic
    @Column(name = "pay_count")
    public String getPayCount() {
        return payCount;
    }

    public void setPayCount(String payCount) {
        this.payCount = payCount;
    }

    @Basic
    @Column(name = "pay_time")
    public String getPayTime() {
        return payTime;
    }

    public void setPayTime(String payTime) {
        this.payTime = payTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TblMedcial that = (TblMedcial) o;

        if (id != that.id) return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        if (medMonth != null ? !medMonth.equals(that.medMonth) : that.medMonth != null) return false;
        if (payCount != null ? !payCount.equals(that.payCount) : that.payCount != null) return false;
        if (payTime != null ? !payTime.equals(that.payTime) : that.payTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (medMonth != null ? medMonth.hashCode() : 0);
        result = 31 * result + (payCount != null ? payCount.hashCode() : 0);
        result = 31 * result + (payTime != null ? payTime.hashCode() : 0);
        return result;
    }
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public TblTeacher getTeacher() {
        return teacher;
    }

    public void setTeacher(TblTeacher teacher) {
        this.teacher = teacher;
    }
}
