package com.example.experiment2.controller;

import com.example.experiment2.bean.Msg;
import com.example.experiment2.bean.StuCurriculum;
import com.example.experiment2.service.CurriculumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * @author wanghu
 * @discrption：
 * @create 2021-05-09 14:37
 */
@Controller
public class CurriculumController {

    @Autowired
    private CurriculumService curriculumService;

    //获取所有已选课程(学生)
    @ResponseBody
    @RequestMapping(value = "/courses/{ID}", method = RequestMethod.GET)
    public Msg getAllSelectedCourseById(@PathVariable("ID") String ID) {
        List<StuCurriculum> allSelectedCourse = curriculumService.getAllSelectedCourseById(ID);
        return Msg.success().add("courses", allSelectedCourse);
    }

    //获取必修课程(学生)
    @ResponseBody
    @RequestMapping(value = "/compulsory/{ID}", method = RequestMethod.GET)
    public Msg getCompulsoryCourseById(@PathVariable("ID") String ID) {
        List<StuCurriculum> compulsoryCourse = curriculumService.getCompulsoryCourseById(ID);
        return Msg.success().add("courses", compulsoryCourse);
    }

    //获取选修课程(学生)
    @ResponseBody
    @RequestMapping(value = "/elective/{ID}", method = RequestMethod.GET)
    public Msg getElectiveCourseById(@PathVariable("ID") String ID) {
        List<StuCurriculum> electiveCourse = curriculumService.getElectiveCourseById(ID);
        return Msg.success().add("courses", electiveCourse);
    }

    //获取已修课程(学生)
    @ResponseBody
    @RequestMapping(value = "/learned/{ID}", method = RequestMethod.GET)
    public Msg getLearnedCourseById(@PathVariable("ID") String ID) {
        List<StuCurriculum> learnedCourse = curriculumService.getLearnedCourseById(ID);
        return Msg.success().add("courses", learnedCourse);
    }

    //获取未修课程(学生)
    @ResponseBody
    @RequestMapping(value = "/notlearned/{ID}", method = RequestMethod.GET)
    public Msg getNotLearnedCourseById(@PathVariable("ID") String ID) {
        List<StuCurriculum> notLearnedCourse = curriculumService.getNotLearnedCourseById(ID);
        return Msg.success().add("courses", notLearnedCourse);
    }

    //获取有成绩的课程(学生)
    @ResponseBody
    @RequestMapping(value = "/grade/{ID}", method = RequestMethod.GET)
    public Msg getGradeById(@PathVariable("ID") String ID) {
        List<StuCurriculum> grade = curriculumService.getGradeById(ID);
        return Msg.success().add("grade", grade);
    }

    //删除课程(学生)
    @ResponseBody
    @RequestMapping(value = "/deleteCourse/{id}", method = RequestMethod.DELETE)
    public Msg deleteSelectedCourseById(@PathVariable("id") Integer id) {
        curriculumService.deleteSelectedCourseById(id);
        return Msg.success();
    }

    //获取未授课程名和已售课程名(未打成绩)(教师)
    @ResponseBody
    @RequestMapping(value = "/unTeachedCourses/{courseNames}", method = RequestMethod.GET)
    public Msg getCourseNames(@PathVariable("courseNames") String allCourses) {
        List<String> unTeachedCourseNames = new ArrayList<>();
        List<String> teachedCourseNames = new ArrayList<>();
        String[] allCourseNames = allCourses.split("-");
        for (Integer i = 0; i < allCourseNames.length; i++) {
            boolean b = curriculumService.isUnTeachedCourse(allCourseNames[i]);
            boolean b1 = curriculumService.isTeachedCourse(allCourseNames[i]);
            if (b) {
                unTeachedCourseNames.add(allCourseNames[i]);
            } else if (b1) {
                teachedCourseNames.add(allCourseNames[i]);
            }
        }
        return Msg.success().add("unTeachedCourseNames", unTeachedCourseNames).add("teachedCourseNames", teachedCourseNames);
    }

    //获取指定课程列表(教师/教秘)
    @ResponseBody
    @RequestMapping(value = "/course/{courseName}", method = RequestMethod.GET)
    public Msg getCourseByCourseName(@PathVariable("courseName") String courseName) {
        List<StuCurriculum> courseList = curriculumService.getCourseByCourseName(courseName);
        return Msg.success().add("courseList", courseList);
    }

    //更新课程成绩或课程状态(教师/教秘)
    @ResponseBody
    @RequestMapping(value = "/updateGrade/{updateGradeData}", method = RequestMethod.PUT)
    public Msg updateGrade(@PathVariable("updateGradeData") String updateGradeData) {
        String[] strings = updateGradeData.split("-");
        StuCurriculum curriculum;
        if (strings.length == 3) {
            if (strings[2].equals("未修") || strings[2].equals("已修")) {
                curriculum = new StuCurriculum(null, null, strings[0], null, strings[1], null, strings[2], null);
            } else {
                Integer grade = Integer.parseInt(strings[2]);
                curriculum = new StuCurriculum(null, null, strings[0], null, strings[1], null, null, grade);
            }
            curriculumService.updateGradeByCourseNameAndStuId(curriculum);
        } else if (strings.length == 4) {
            if (strings[3].equals("00")) {
                curriculumService.updateCourseGradeIsNull(strings[0], strings[1]);
            } else {
                Integer grade = Integer.parseInt(strings[3]);
                curriculum = new StuCurriculum(null, null, strings[0], null, strings[1], null, strings[2], grade);
                curriculumService.updateGradeByCourseNameAndStuId(curriculum);
            }
        }
        return Msg.success();
    }

    //更新课程为已修(教师)
    @ResponseBody
    @RequestMapping(value = "/updateCourseStatus/{courseName}", method = RequestMethod.PUT)
    public Msg updateCourseStatusByCourseName(@PathVariable("courseName") String courseName) {
        curriculumService.updateCourseStatusByCourseName(courseName);
        return Msg.success();
    }

    //获取按成绩排序后指定课程(教师/教秘)
    @ResponseBody
    @RequestMapping(value = "/sortCourse/{courseName}", method = RequestMethod.GET)
    public Msg getSortCourseByCourseName(@PathVariable("courseName") String courseName) {
        List<StuCurriculum> courseList = curriculumService.getSortCourseByCourseName(courseName);
        return Msg.success().add("courseList", courseList);
    }

}
