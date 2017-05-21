package com.alleyz.school.admin.entity;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.util.Collection;

/**
 * Created by alleyz on 2017/5/19 0019.
 */
@Entity
@Table(name = "tbl_teacher", schema = "alleyz", catalog = "")
@XmlRootElement
public class TblTeacher {
    private int id;
    private String userCode;
    private String loginCode;
    private String name;
    private String sex;
    private String dep;
    private String birthday;
    private String edu;
    private String entryTime;
    private String phone;
    private String address;
    private String password;
    private Integer isAdmin;
    private Collection<TblAttend> attends;
    private Collection<TblCheck> checks;
    private Collection<TblMedcial> medcials;
    private Collection<TblSalary> salaries;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "user_code")
    public String getUserCode() {
        return userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    @Basic
    @Column(name = "login_code")
    public String getLoginCode() {
        return loginCode;
    }

    public void setLoginCode(String loginCode) {
        this.loginCode = loginCode;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "sex")
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Basic
    @Column(name = "dep")
    public String getDep() {
        return dep;
    }

    public void setDep(String dep) {
        this.dep = dep;
    }

    @Basic
    @Column(name = "birthday")
    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    @Basic
    @Column(name = "edu")
    public String getEdu() {
        return edu;
    }

    public void setEdu(String edu) {
        this.edu = edu;
    }

    @Basic
    @Column(name = "entry_time")
    public String getEntryTime() {
        return entryTime;
    }

    public void setEntryTime(String entryTime) {
        this.entryTime = entryTime;
    }

    @Basic
    @Column(name = "phone")
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "address")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "is_admin")
    public Integer getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(Integer isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TblTeacher that = (TblTeacher) o;

        if (id != that.id) return false;
        if (userCode != null ? !userCode.equals(that.userCode) : that.userCode != null) return false;
        if (loginCode != null ? !loginCode.equals(that.loginCode) : that.loginCode != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (sex != null ? !sex.equals(that.sex) : that.sex != null) return false;
        if (dep != null ? !dep.equals(that.dep) : that.dep != null) return false;
        if (birthday != null ? !birthday.equals(that.birthday) : that.birthday != null) return false;
        if (edu != null ? !edu.equals(that.edu) : that.edu != null) return false;
        if (entryTime != null ? !entryTime.equals(that.entryTime) : that.entryTime != null) return false;
        if (phone != null ? !phone.equals(that.phone) : that.phone != null) return false;
        if (address != null ? !address.equals(that.address) : that.address != null) return false;
        if (password != null ? !password.equals(that.password) : that.password != null) return false;
        if (isAdmin != null ? !isAdmin.equals(that.isAdmin) : that.isAdmin != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (userCode != null ? userCode.hashCode() : 0);
        result = 31 * result + (loginCode != null ? loginCode.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (sex != null ? sex.hashCode() : 0);
        result = 31 * result + (dep != null ? dep.hashCode() : 0);
        result = 31 * result + (birthday != null ? birthday.hashCode() : 0);
        result = 31 * result + (edu != null ? edu.hashCode() : 0);
        result = 31 * result + (entryTime != null ? entryTime.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (isAdmin != null ? isAdmin.hashCode() : 0);
        return result;
    }


    @OneToMany(mappedBy = "teacher",cascade = CascadeType.ALL)
    public Collection<TblAttend> getAttends() {
        return attends;
    }

    public void setAttends(Collection<TblAttend> attends) {
        this.attends = attends;
    }
    @OneToMany(mappedBy = "teacher",cascade = CascadeType.ALL)
    public Collection<TblCheck> getChecks() {
        return checks;
    }

    public void setChecks(Collection<TblCheck> checks) {
        this.checks = checks;
    }
    @OneToMany(mappedBy = "teacher",cascade = CascadeType.ALL)
    public Collection<TblMedcial> getMedcials() {
        return medcials;
    }

    public void setMedcials(Collection<TblMedcial> medcials) {
        this.medcials = medcials;
    }
    @OneToMany(mappedBy = "teacher",cascade = CascadeType.ALL)
    public Collection<TblSalary> getSalaries() {
        return salaries;
    }

    public void setSalaries(Collection<TblSalary> salaries) {
        this.salaries = salaries;
    }


}
