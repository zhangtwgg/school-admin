package com.alleyz.school;

import com.alleyz.school.admin.filter.LoginFilter;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 * Created by alleyz on 2017/5/18 0018.
 *
 */
@SpringBootApplication
@EnableWebMvc
@ComponentScan
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class);
    }

    @Bean
    public FilterRegistrationBean loginFilter(){
        FilterRegistrationBean registrationBean = new FilterRegistrationBean();
        registrationBean.setFilter(new LoginFilter());
        registrationBean.addUrlPatterns("/*");
        registrationBean.addInitParameter("excludeUrl", "/page/admin/login.html,/login/signIn");
        registrationBean.addInitParameter("excludeResource", "/page/assets");
        return registrationBean;
    }
}
