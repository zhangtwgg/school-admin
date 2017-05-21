package com.alleyz.school.admin.filter;

import com.alleyz.school.admin.repository.TeacherRepository;
import org.apache.catalina.servlet4preview.http.HttpFilter;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;

import javax.annotation.Resource;
import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Created by alleyz on 2017/5/21 0021.
 */
public class LoginFilter extends HttpFilter{
    @Override
    public void destroy() {

    }

    private Set<String> excludeUrl = new HashSet<>();
    private String assets;

    @Override
    protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        String path = request.getServletPath();
        if(path == null || "/".equals(path) || "".equals(path)) {
            response.sendRedirect("/page/admin/login.html");
            return;
        }
        if(excludeUrl.contains(path) || path.contains(assets)){
            chain.doFilter(request, response);
            return;
        }
        Object obj = request.getSession().getAttribute("signIn");
        if(obj == null){
            response.sendRedirect("/page/admin/login.html");
        }else {
            chain.doFilter(request, response);
        }
    }

    @Override
    public void init() throws ServletException {
        String urls = this.getInitParameter("excludeUrl");
        if(urls != null){
            excludeUrl.addAll(Arrays.asList(urls.split(",")));;
        }
        this.assets = this.getInitParameter("excludeResource");
    }
}
