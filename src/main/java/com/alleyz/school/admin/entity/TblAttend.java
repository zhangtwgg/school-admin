package com.alleyz.school.admin.entity;

import javax.persistence.*;

/**
 * Created by alleyz on 2017/5/19 0019.
 */
@Entity
@Table(name = "tbl_attend", schema = "alleyz", catalog = "")
public class TblAttend {
    private int id;
    private String attendMonth;
    private Integer attendNormal;
    private Double lateCount;
    private Double earlyCount;
    private Double sickCount;
    private Double leaveCount;
    private Double absentCount;
    private int userId;
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
    @Column(name = "attend_month")
    public String getAttendMonth() {
        return attendMonth;
    }

    public void setAttendMonth(String attendMonth) {
        this.attendMonth = attendMonth;
    }

    @Basic
    @Column(name = "attend_normal")
    public Integer getAttendNormal() {
        return attendNormal;
    }

    public void setAttendNormal(Integer attendNormal) {
        this.attendNormal = attendNormal;
    }

    @Basic
    @Column(name = "late_count")
    public Double getLateCount() {
        return lateCount;
    }

    public void setLateCount(Double lateCount) {
        this.lateCount = lateCount;
    }

    @Basic
    @Column(name = "early_count")
    public Double getEarlyCount() {
        return earlyCount;
    }

    public void setEarlyCount(Double earlyCount) {
        this.earlyCount = earlyCount;
    }

    @Basic
    @Column(name = "sick_count")
    public Double getSickCount() {
        return sickCount;
    }

    public void setSickCount(Double sickCount) {
        this.sickCount = sickCount;
    }

    @Basic
    @Column(name = "leave_count")
    public Double getLeaveCount() {
        return leaveCount;
    }

    public void setLeaveCount(Double leaveCount) {
        this.leaveCount = leaveCount;
    }

    @Basic
    @Column(name = "absent_count")
    public Double getAbsentCount() {
        return absentCount;
    }

    public void setAbsentCount(Double absentCount) {
        this.absentCount = absentCount;
    }

    @Basic
    @Column(name = "user_id")
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TblAttend tblAttend = (TblAttend) o;

        if (id != tblAttend.id) return false;
        if (userId != tblAttend.userId) return false;
        if (attendMonth != null ? !attendMonth.equals(tblAttend.attendMonth) : tblAttend.attendMonth != null)
            return false;
        if (attendNormal != null ? !attendNormal.equals(tblAttend.attendNormal) : tblAttend.attendNormal != null)
            return false;
        if (lateCount != null ? !lateCount.equals(tblAttend.lateCount) : tblAttend.lateCount != null) return false;
        if (earlyCount != null ? !earlyCount.equals(tblAttend.earlyCount) : tblAttend.earlyCount != null) return false;
        if (sickCount != null ? !sickCount.equals(tblAttend.sickCount) : tblAttend.sickCount != null) return false;
        if (leaveCount != null ? !leaveCount.equals(tblAttend.leaveCount) : tblAttend.leaveCount != null) return false;
        if (absentCount != null ? !absentCount.equals(tblAttend.absentCount) : tblAttend.absentCount != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (attendMonth != null ? attendMonth.hashCode() : 0);
        result = 31 * result + (attendNormal != null ? attendNormal.hashCode() : 0);
        result = 31 * result + (lateCount != null ? lateCount.hashCode() : 0);
        result = 31 * result + (earlyCount != null ? earlyCount.hashCode() : 0);
        result = 31 * result + (sickCount != null ? sickCount.hashCode() : 0);
        result = 31 * result + (leaveCount != null ? leaveCount.hashCode() : 0);
        result = 31 * result + (absentCount != null ? absentCount.hashCode() : 0);
        result = 31 * result + userId;
        return result;
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
