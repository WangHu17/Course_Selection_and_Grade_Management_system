package com.example.experiment2.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class LoginFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        Object user = req.getSession().getAttribute("user");
        String spath = req.getServletPath();
        //不需要过滤的url
        String[] urls = {"/login","/json",".js",".css",".ico",".jpg",".png",".woff",".ttf"};
        boolean flag = true;
        for (String str : urls) {
            if (spath.indexOf(str) != -1) {
                flag =false;
                break;
            }
        }
        if(flag){
            if(user==null){
                req.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(servletRequest,servletResponse);
            }else {
                filterChain.doFilter(servletRequest, servletResponse);
            }
        } else{
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }
}
