package com.alleyz;

import com.alleyz.school.Application;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Import;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.Random;

/**
 * Created by alleyz on 2017/5/21 0021.
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes=Application.class)
public class InitData {
    @Resource
    private JdbcTemplate jdbc;
    private static String lastName = "周,吴,郑,王,赵,钱,孙,李";
    private static String firstName = "甲,乙,丙,丁,戊,己,庚,辛,壬,癸";
    private static String address = "顺义区天竺镇天竺村,朝阳区紫玉东路1号,朝阳区北三环东路西坝河西里28号,海淀苏州桥万泉河路 ";
    private static String dep = "学生处,宣传部,教务处,后勤部,";

    @Test
    public void initTeachers() {
        String[] deps = dep.split(",");
        String isql = "INSERT INTO `tbl_teacher` (user_code, login_code, name, sex, dep, birthday," +
                "edu, entry_time, phone, address, password, is_admin) VALUES (?, ?, ?,?,?,?,?,?,?,?,?,?);";
        for (int i = 0; i <= 20; i++) {
            String code = "1" + String.format("%04d", i);
            String login = getLoginCode(i);
            String name = getName(i);
            String dep = getDep(i);
            String sex = i % 2 == 0 ? "男":"女";
            String edu = getDay(i, "本科", "硕士", "博士");
            String bir = getDayBir(i);
            String work = getDay(i);
            String address = getAddress(i);
            String phone = i + String.format("%010d", i * 13);
            String isAdmin = i % 2 == 0 ? "1":"0";
            jdbc.update(isql,code, login, name, sex, dep, bir, edu, work, phone, address, "520520", isAdmin );
        }
    }

    @Test
    public void initSalary(){
        String sql = "insert `tbl_salary`(user_id, account_period, base_pay, bonus, allowance, salary)values(?,?,?,?,?,?)";
        for(int i = 0; i<20; i++) {
            for(int j = 0; j<5; j++){
                int userId = 1+i;
                String period = "2017-0"+j;
                double basePay = i % 3 == 0 ? 10000 : 8000;
                double bonus = Math.abs(Math.cos(i * i) * 5000);
                double allowance = 160;
                double salary = basePay +bonus + allowance;
                jdbc.update(sql, userId, period, basePay, bonus, allowance, salary);
            }
        }
    }

    @Test
    public void initCheck(){
        String sql = "insert `tbl_check` (user_id, item, result, check_time)values(?,?,?,?)";
        for(int i = 0; i<20; i++) {
            jdbc.update(sql, i+1,"业绩考核", getDay(i, "不合格","合格","良好","优秀"), "2017-05-15");
            jdbc.update(sql, i+1, "考勤考核", getDay(i + 5, "不合格","合格","良好","优秀"), "2017-05-16");
        }
    }
    @Test
    public void initAttend(){
        String sql = "insert `tbl_attend`(user_id, attend_month, attend_normal,late_count,early_count, sick_count, leave_count, absent_count)" +
                "values(?,?,?,?,?,?,?,?)";

        for(int i = 0; i<20; i++) {
            jdbc.update(sql, i+1,"2017-05", 21, 1,2,3,4,5);
            jdbc.update(sql, i+1,"2017-04", 21, 1,2,3,4,5);
        }
    }
    @Test
    public void initMedical(){
        String sql = "insert `tbl_medcial`(user_id, med_month, pay_count,pay_time)" +
                "values(?,?,?,?)";

        for(int i = 0; i<20; i++) {
            jdbc.update(sql, i+1,"2017-05", 172,"2017-05-15");
            jdbc.update(sql, i+1,"2017-04", 173, "2017-04-15");
        }
    }
    static String getName(int i) {
        Random random = new Random(i+23); //加入随机因子
        int f = random.nextInt(7);
        random = new Random(i + 7451);
        int l = random.nextInt(10);
        return lastName.split(",")[f] + firstName.split(",")[l];
    }

    static String getAddress(int i) {
        Random random = new Random(i + 994);
        int l = random.nextInt(3);
        return address.split(",")[l];
    }

    static String getDep(int i) {
        Random random = new Random(i + 965);
        int l = random.nextInt(3);
        return dep.split(",")[l];
    }

    static String getLoginCode(int i) {
        String o = "abcdefghijklmnopqrstuvwxyz";
        Random random = new Random(653 + i);
        int i1 = random.nextInt(23);
        int i2 = random.nextInt(23);
        int i3 = random.nextInt(23);
        int i4 = random.nextInt(23);
        int i5 = random.nextInt(23);
        char[] chars = o.toCharArray();
        return chars[i1] + "" + chars[i2] + chars[i3] + chars[i4] + chars[i5];
    }

    String getDay(int i, String... seed) {
        Random random = new Random(i + 936);
        return seed[random.nextInt(seed.length)];
    }

    String getDay(int i) {
        return getDay(i, "2017-05-01", "2017-05-03", "2017-05-05", "2017-05-09", "2017-05-14", "2017-05-13", "2017-05-11");
    }

    String getDayBir(int i) {
        return getDay(i, "1992-05-01", "1992-05-03", "1992-05-05", "1992-05-09", "1992-05-14", "1992-05-13", "1992-05-11");
    }
}
