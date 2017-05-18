package com.alleyz.school.admin.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created by alleyz on 2017/5/18 0018.
 */
@Entity
@Table(name = "tbl_medcial")
public class TblMedcial  implements Serializable {
    private int id;
    private String medMonth;
    private String payCount;
    private Timestamp payTime;
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
    public Timestamp getPayTime() {
        return payTime;
    }

    public void setPayTime(Timestamp payTime) {
        this.payTime = payTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TblMedcial that = (TblMedcial) o;

        if (id != that.id) return false;
        if (medMonth != null ? !medMonth.equals(that.medMonth) : that.medMonth != null) return false;
        if (payCount != null ? !payCount.equals(that.payCount) : that.payCount != null) return false;
        if (payTime != null ? !payTime.equals(that.payTime) : that.payTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (medMonth != null ? medMonth.hashCode() : 0);
        result = 31 * result + (payCount != null ? payCount.hashCode() : 0);
        result = 31 * result + (payTime != null ? payTime.hashCode() : 0);
        return result;
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
