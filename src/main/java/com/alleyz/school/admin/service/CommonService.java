package com.alleyz.school.admin.service;

import com.alleyz.school.admin.repositry.AttendRepositry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by alleyz on 2017/5/18 0018.
 */
@Service
public class CommonService<T> {

    @Resource
    private AttendRepositry aRepo;



    public T get(Integer id) {
        T t = null;
        return t;
    }
    public void add(T t){

    }
    public List<T> list(Integer userId){
        return null;
    }
}
