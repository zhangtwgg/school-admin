package com.alleyz.school.admin.rest;

import com.alleyz.school.admin.entity.TblTeacher;
import com.alleyz.school.admin.repository.TeacherRepository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by alleyz on 2017/5/21 0021.
 */
@RestController
@RequestMapping("login")
public class LoginRest {
    @Resource
    private TeacherRepository repo;

    @RequestMapping("/signIn")
    Map<String, Object> login(String loginCode, String password, HttpServletRequest request){
        Map<String, Object> result = new HashMap<>();
        List<TblTeacher> teachers = repo.findByLoginCodeAndPassword(loginCode, password);
        if(teachers.size() == 0) {
            result.put("success", false);
            result.put("msg", "用户名或密码错误");
            return result;
        }
        TblTeacher teacher = teachers.get(0);
        result.put("success", true);
        result.put("isAdmin", teacher.getIsAdmin() == 1);
        result.put("id", teacher.getId());
        result.put("name", teacher.getName());
        request.getSession().setAttribute("signIn", teacher);
        return result;
    }
    @RequestMapping("/signOut")
    Map<String, Object> signOut(HttpServletRequest request){
        Map<String, Object> result = new HashMap<>();
        request.getSession().removeAttribute("signIn");
        result.put("success", true);
        return result;
    }
}
