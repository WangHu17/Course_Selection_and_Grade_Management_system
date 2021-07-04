package com.example.experiment2.service;

import com.example.experiment2.bean.TrainingProgram;
import com.example.experiment2.bean.TrainingProgramExample;
import com.example.experiment2.dao.TrainingProgramMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author wanghu
 * @discrption：
 * @create 2021-05-08 22:51
 */
@Service
public class TrainingProgramService {

    @Autowired
    private TrainingProgramMapper trainingProgramMapper;

    public List<TrainingProgram> getTrainProgramByMajor(String major) {
        List<String> list = new ArrayList<>();
        list.add("公共课");
        list.add(major);
        TrainingProgramExample example = new TrainingProgramExample();
        example.createCriteria().andCourseMajorIn(list);
        List<TrainingProgram> trainingPrograms = trainingProgramMapper.selectByExample(example);
        return trainingPrograms;
    }

    public List<TrainingProgram> getTrainProgramByCourseIds(List<Integer> ids){
        TrainingProgramExample example = new TrainingProgramExample();
        example.createCriteria().andCourseIdIn(ids);
        return trainingProgramMapper.selectByExample(example);
    }

    public List<TrainingProgram> getTeachingCoursesByName(String teacherName) {
        TrainingProgramExample example = new TrainingProgramExample();
        example.createCriteria().andCourseTeacherEqualTo(teacherName);
        return trainingProgramMapper.selectByExample(example);
    }

    public void updateTeachingCourse(TrainingProgram course){
        trainingProgramMapper.updateByPrimaryKeySelective(course);
    }

    public List<TrainingProgram> getAllTrainProgram() {
        return trainingProgramMapper.selectByExample(null);
    }

    public void addTrainProgram(TrainingProgram trainingProgram) {
        trainingProgramMapper.insertSelective(trainingProgram);
    }

    public void UpdateTrainProgram(TrainingProgram trainingProgram) {
        trainingProgramMapper.updateByPrimaryKeySelective(trainingProgram);
    }

    public void deleteTrainProgramByCourseId(Integer courseId) {
        trainingProgramMapper.deleteByPrimaryKey(courseId);
    }

    public List<String> getCourseNamesByMajor(String major) {
        List<String> courseNames = trainingProgramMapper.getCourseNamesByMajor(major);
        return courseNames;
    }
}
