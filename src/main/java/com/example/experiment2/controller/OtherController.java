package com.example.experiment2.controller;

import com.example.experiment2.bean.Msg;
import com.example.experiment2.service.OtherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * @author wanghu
 * @discrption：
 * @create 2021-05-13 15:16
 */
@Controller
public class OtherController {

    @Autowired
    private OtherService otherService;

    //获取所有专业名
    @ResponseBody
    @RequestMapping(value = "/majors", method = RequestMethod.GET)
    public Msg getAllMajors() {
        List<String> majors = otherService.getAllMajors();
        return Msg.success().add("majors", majors);
    }

    //通过专业获取所有班级
    @ResponseBody
    @RequestMapping(value = "/classes/{major}", method = RequestMethod.GET)
    public Msg getClassesByMajor(@PathVariable("major") String major) {
        List<String> classes = otherService.getClassesByMajor(major);
        return Msg.success().add("classes", classes);
    }

    //获取指定班级的学号
    @ResponseBody
    @RequestMapping(value = "/stus/{student_ids}", method = RequestMethod.GET)
    public Msg getStudentIdsByClass(@PathVariable("student_ids") String student_ids) {
        String[] strings = student_ids.split("-");
        ArrayList<String> list = new ArrayList<>();
        for (Integer i = 1; i < strings.length; i++) {
            list.add(strings[i]);
        }
        List<String> ids = otherService.getStudentIdsByClass(strings[0],list);
        return Msg.success().add("ids", ids);
    }
}
