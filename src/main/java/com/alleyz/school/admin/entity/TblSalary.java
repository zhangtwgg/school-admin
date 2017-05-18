package com.alleyz.school.admin.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by alleyz on 2017/5/18 0018.
 */
@Entity
@Table(name = "tbl_salary")
public class TblSalary  implements Serializable {
    private int id;
    private String userId;
    private String accountPeriod;
    private String basePay;
    private Double bonus;
    private Double allowance;
    private Double salary;
    private TblTeacher tblTeacherById;

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
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "account_period")
    public String getAccountPeriod() {
        return accountPeriod;
    }

    public void setAccountPeriod(String accountPeriod) {
        this.accountPeriod = accountPeriod;
    }

    @Basic
    @Column(name = "base_pay")
    public String getBasePay() {
        return basePay;
    }

    public void setBasePay(String basePay) {
        this.basePay = basePay;
    }

    @Basic
    @Column(name = "bonus")
    public Double getBonus() {
        return bonus;
    }

    public void setBonus(Double bonus) {
        this.bonus = bonus;
    }

    @Basic
    @Column(name = "allowance")
    public Double getAllowance() {
        return allowance;
    }

    public void setAllowance(Double allowance) {
        this.allowance = allowance;
    }

    @Basic
    @Column(name = "salary")
    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TblSalary tblSalary = (TblSalary) o;

        if (id != tblSalary.id) return false;
        if (userId != null ? !userId.equals(tblSalary.userId) : tblSalary.userId != null) return false;
        if (accountPeriod != null ? !accountPeriod.equals(tblSalary.accountPeriod) : tblSalary.accountPeriod != null)
            return false;
        if (basePay != null ? !basePay.equals(tblSalary.basePay) : tblSalary.basePay != null) return false;
        if (bonus != null ? !bonus.equals(tblSalary.bonus) : tblSalary.bonus != null) return false;
        if (allowance != null ? !allowance.equals(tblSalary.allowance) : tblSalary.allowance != null) return false;
        if (salary != null ? !salary.equals(tblSalary.salary) : tblSalary.salary != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (accountPeriod != null ? accountPeriod.hashCode() : 0);
        result = 31 * result + (basePay != null ? basePay.hashCode() : 0);
        result = 31 * result + (bonus != null ? bonus.hashCode() : 0);
        result = 31 * result + (allowance != null ? allowance.hashCode() : 0);
        result = 31 * result + (salary != null ? salary.hashCode() : 0);
        return result;
    }

    @OneToOne
    @JoinColumn(name = "id", referencedColumnName = "id", nullable = false)
    public TblTeacher getTblTeacherById() {
        return tblTeacherById;
    }

    public void setTblTeacherById(TblTeacher tblTeacherById) {
        this.tblTeacherById = tblTeacherById;
    }
}
