package com.example.experiment2.controller;

import com.example.experiment2.bean.Msg;
import com.example.experiment2.bean.StuCurriculum;
import com.example.experiment2.bean.Student;
import com.example.experiment2.bean.TrainingProgram;
import com.example.experiment2.service.CurriculumService;
import com.example.experiment2.service.TrainingProgramService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * @author wanghu
 * @discrption：
 * @create 2021-05-08 22:49
 */
@Controller
public class TrainProgramController {
    @Autowired
    private TrainingProgramService trainingProgramService;
    @Autowired
    private CurriculumService curriculumService;
    //根据专业获取培养方案
    @ResponseBody
    @RequestMapping(value = "/train/{major}",method = RequestMethod.GET)
    public Msg getTrainProgramByMajor(@PathVariable("major") String major,HttpSession session){
        List<TrainingProgram> trainingPrograms = trainingProgramService.getTrainProgramByMajor(major);
        Student student = (Student) session.getAttribute("user");
        List<StuCurriculum> allSelectedCourse = curriculumService.getAllSelectedCourseById(student.getId());
        ArrayList<Integer> list = new ArrayList<>();
        for(StuCurriculum selectedCourse:allSelectedCourse){
            list.add(selectedCourse.getCourseId());
        }
        return Msg.success().add("trainingPrograms",trainingPrograms).add("selectedCourseId",list);
    }

    //从培养方案中添加课程
    @ResponseBody
    @RequestMapping(value = "/addCourse/{ids}",method = RequestMethod.POST)
    public Msg addCourseByCourseIds(@PathVariable("ids") String ids, HttpSession session){
        String[] idS = ids.split("-");
        List<Integer> list = new ArrayList<>();
        for(String id:idS){
            list.add(Integer.parseInt(id));
        }
        Student student = (Student) session.getAttribute("user");
        List<TrainingProgram> courses = trainingProgramService.getTrainProgramByCourseIds(list);
        for(TrainingProgram course:courses){
            StuCurriculum curriculum = new StuCurriculum(null, course.getCourseId(), course.getCourseName(),
                    course.getCourseNature(), student.getId(), student.getStudentName(), "未修", null);
            curriculumService.saveCourse(curriculum);
        }
        return Msg.success();
    }

    //获取教授的课程(教师)
    @ResponseBody
    @RequestMapping(value = "/teachingCourses/{name}",method = RequestMethod.GET)
    public Msg getTeachingCoursesByName(@PathVariable("name")String teacherName){
        List<TrainingProgram> teachingCourses = trainingProgramService.getTeachingCoursesByName(teacherName);
        return Msg.success().add("teachingCourses",teachingCourses);
    }

    //修改课程属性(教师)
    @ResponseBody
    @RequestMapping(value = "/updateCourse/{update_data}",method = RequestMethod.PUT)
    public Msg updateTeachingCoursesById(@PathVariable("update_data")String data){
        String[] infos = data.split("-");
        Integer course_id = Integer.parseInt(infos[0]);
        TrainingProgram course = new TrainingProgram(course_id, null, null, infos[1], null, infos[4], infos[2], infos[3]);
        trainingProgramService.updateTeachingCourse(course);
        return Msg.success();
    }

    //获取所有培养方案(教秘)
    @ResponseBody
    @RequestMapping(value = "/trains",method = RequestMethod.GET)
    public Msg getAllTrainProgram(){
        List<TrainingProgram> allTrainProgram = trainingProgramService.getAllTrainProgram();
        return Msg.success().add("allTrainProgram",allTrainProgram);
    }

    //添加培养方案(教秘)
    @ResponseBody
    @RequestMapping(value = "/train",method = RequestMethod.POST)
    public Msg addTrainProgram(TrainingProgram trainingProgram){
        trainingProgramService.addTrainProgram(trainingProgram);
        return Msg.success();
    }

    //修改培养方案(教秘)
    @ResponseBody
    @RequestMapping(value = "/train/{courseId}",method = RequestMethod.PUT)
    public Msg UpdateTrainProgram(TrainingProgram trainingProgram,@PathVariable("courseId")Integer courseId){
        trainingProgram.setCourseId(courseId);
        trainingProgramService.UpdateTrainProgram(trainingProgram);
        return Msg.success();
    }

    //删除培养方案(教秘)
    @ResponseBody
    @RequestMapping(value = "/train/{courseId}",method = RequestMethod.DELETE)
    public Msg deleteTrainProgramByCourseId(@PathVariable("courseId")Integer courseId){
        trainingProgramService.deleteTrainProgramByCourseId(courseId);
        return Msg.success();
    }

    //根据专业获取所有课程名
    @ResponseBody
    @RequestMapping(value = "/courseNames/{major}",method = RequestMethod.GET)
    public Msg getCourseNamesByMajor(@PathVariable("major") String major){
        List<String> courseNames = trainingProgramService.getCourseNamesByMajor(major);
        return Msg.success().add("courseNames",courseNames);
    }

}
