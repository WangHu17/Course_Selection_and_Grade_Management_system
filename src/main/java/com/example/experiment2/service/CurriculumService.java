package com.example.experiment2.service;

import com.example.experiment2.bean.StuCurriculum;
import com.example.experiment2.bean.StuCurriculumExample;
import com.example.experiment2.dao.StuCurriculumMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wanghu
 * @discrption：
 * @create 2021-05-09 16:49
 */
@Service
public class CurriculumService {

    @Autowired
    private StuCurriculumMapper stuCurriculumMapper;

    public List<StuCurriculum> getAllSelectedCourseById(String id) {
        StuCurriculumExample example = new StuCurriculumExample();
        example.createCriteria().andCourseSelectedIdEqualTo(id);
        return stuCurriculumMapper.selectByExample(example);
    }

    public List<StuCurriculum> getCompulsoryCourseById(String id) {
        StuCurriculumExample example = new StuCurriculumExample();
        example.createCriteria().andCourseSelectedIdEqualTo(id).andCourseNatureEqualTo("学位课");
        return stuCurriculumMapper.selectByExample(example);
    }

    public List<StuCurriculum> getElectiveCourseById(String id) {
        StuCurriculumExample example = new StuCurriculumExample();
        example.createCriteria().andCourseSelectedIdEqualTo(id).andCourseNatureEqualTo("选修课");
        return stuCurriculumMapper.selectByExample(example);
    }

    public List<StuCurriculum> getLearnedCourseById(String id) {
        StuCurriculumExample example = new StuCurriculumExample();
        example.createCriteria().andCourseSelectedIdEqualTo(id).andCourseStatusEqualTo("已修");
        return stuCurriculumMapper.selectByExample(example);
    }

    public List<StuCurriculum> getNotLearnedCourseById(String id) {
        StuCurriculumExample example = new StuCurriculumExample();
        example.createCriteria().andCourseSelectedIdEqualTo(id).andCourseStatusEqualTo("未修");
        return stuCurriculumMapper.selectByExample(example);
    }

    public List<StuCurriculum> getGradeById(String id) {
        StuCurriculumExample example = new StuCurriculumExample();
        example.createCriteria().andCourseSelectedIdEqualTo(id).andGradeIsNotNull();
        return stuCurriculumMapper.selectByExample(example);
    }

    public void saveCourse(StuCurriculum curriculum) {
        stuCurriculumMapper.insert(curriculum);
    }

    public void deleteSelectedCourseById(Integer id) {
        stuCurriculumMapper.deleteByPrimaryKey(id);
    }

    public boolean isUnTeachedCourse(String courseName) {
        StuCurriculumExample example = new StuCurriculumExample();
        example.createCriteria().andCourseNameEqualTo(courseName).andCourseStatusEqualTo("未修");
        List<StuCurriculum> courses = stuCurriculumMapper.selectByExample(example);
        return courses.size()!=0;
    }

    public boolean isTeachedCourse(String courseName) {
        StuCurriculumExample example = new StuCurriculumExample();
        example.createCriteria().andCourseNameEqualTo(courseName).andCourseStatusEqualTo("已修");
        List<StuCurriculum> courses = stuCurriculumMapper.selectByExample(example);
        return courses.size()!=0;
    }

    public List<StuCurriculum> getCourseByCourseName(String courseName) {
        StuCurriculumExample example = new StuCurriculumExample();
        example.createCriteria().andCourseNameEqualTo(courseName);
        return stuCurriculumMapper.selectByExample(example);
    }

    public void updateGradeByCourseNameAndStuId(StuCurriculum curriculum) {
        StuCurriculumExample example = new StuCurriculumExample();
        example.createCriteria().andCourseNameEqualTo(curriculum.getCourseName()).andCourseSelectedIdEqualTo(curriculum.getCourseSelectedId());
        stuCurriculumMapper.updateByExampleSelective(curriculum,example);
    }

    public void updateCourseStatusByCourseName(String courseName) {
        StuCurriculumExample example = new StuCurriculumExample();
        example.createCriteria().andCourseNameEqualTo(courseName);
        StuCurriculum curriculum = new StuCurriculum(null, null, null, null, null, null, "已修", null);
        stuCurriculumMapper.updateByExampleSelective(curriculum,example);
    }

    public void updateCourseGradeIsNull(String courseName, String stuId) {
        stuCurriculumMapper.updateCourseGradeIsNull(courseName,stuId);
    }

    public List<StuCurriculum> getSortCourseByCourseName(String courseName) {
        StuCurriculumExample example = new StuCurriculumExample();
        example.createCriteria().andCourseNameEqualTo(courseName);
        example.setOrderByClause("grade desc");
        return stuCurriculumMapper.selectByExample(example);
    }
}
