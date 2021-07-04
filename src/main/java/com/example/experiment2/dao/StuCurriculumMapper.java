package com.example.experiment2.dao;

import com.example.experiment2.bean.StuCurriculum;
import com.example.experiment2.bean.StuCurriculumExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface StuCurriculumMapper {
    long countByExample(StuCurriculumExample example);

    int deleteByExample(StuCurriculumExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(StuCurriculum record);

    int insertSelective(StuCurriculum record);

    List<StuCurriculum> selectByExample(StuCurriculumExample example);

    StuCurriculum selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") StuCurriculum record, @Param("example") StuCurriculumExample example);

    int updateByExample(@Param("record") StuCurriculum record, @Param("example") StuCurriculumExample example);

    int updateByPrimaryKeySelective(StuCurriculum record);

    int updateByPrimaryKey(StuCurriculum record);

    void updateCourseGradeIsNull(String courseName, String stuId);
}