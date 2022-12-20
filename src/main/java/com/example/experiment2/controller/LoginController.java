package com.example.experiment2.controller;

import com.example.experiment2.bean.*;
import com.example.experiment2.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author wanghu
 * @discrption：
 * @create 2021-05-08 20:11
 */
@Controller
public class LoginController {

    @Autowired
    private LoginService loginService;

    //学生登录
    @ResponseBody
    @PostMapping("/stu")
    public Msg studentLogin(UStudent uStu, HttpSession httpSession) {
        UStudent uStudent = loginService.getUserInfo(uStu.getId());
        if (uStudent != null) {
            if (uStudent.getPassword().equals(uStu.getPassword())) {
                Student student = loginService.getUsernameById(uStu.getId());
                httpSession.setAttribute("user", student);
                return Msg.success();
            } else {
                return Msg.fail().add("msg", "密码错误");
            }
        }
        return Msg.fail().add("msg", "用户不存在");
    }

    //教师登录
    @ResponseBody
    @PostMapping( "/tea")
    public Msg teacherLogin(UTeacher uTea, HttpSession httpSession) {
        UTeacher uTeacher = loginService.getTeacherInfo(uTea.getId());
        if (uTeacher != null) {
            if (uTeacher.getPassword().equals(uTea.getPassword())) {
                httpSession.setAttribute("user", uTeacher);
                return Msg.success();
            } else {
                return Msg.fail().add("msg", "密码错误");
            }
        }
        return Msg.fail().add("msg", "用户不存在");
    }

    //教秘登录
    @ResponseBody
    @PostMapping( "/sec")
    public Msg secretaryLogin(UtSecretary uSec, HttpSession httpSession) {
        UtSecretary uSecretary = loginService.getSecretaryInfo(uSec.getId());
        if (uSecretary != null) {
            if (uSecretary.getPassword().equals(uSec.getPassword())) {
                httpSession.setAttribute("user", uSecretary);
                return Msg.success();
            } else {
                return Msg.fail().add("msg", "密码错误");
            }
        }
        return Msg.fail().add("msg", "用户不存在");
    }

    //跳转到学生教务系统主页
    @RequestMapping("/stuIndex")
    public String toStuIndex() {
        return "stu_index";
    }

    //跳转到教师教务系统主页
    @RequestMapping("/teaIndex")
    public String toTeaIndex() {
        return "tea_index";
    }

    //跳转到教秘教务系统主页
    @RequestMapping("/secIndex")
    public String toSecIndex() {
        return "sec_index";
    }

    //注销
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) {
        request.getSession().invalidate();
        return "login";
    }

}
