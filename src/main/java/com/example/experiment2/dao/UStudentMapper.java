package com.example.experiment2.dao;

import com.example.experiment2.bean.UStudent;
import com.example.experiment2.bean.UStudentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UStudentMapper {
    long countByExample(UStudentExample example);

    int deleteByExample(UStudentExample example);

    int deleteByPrimaryKey(String id);

    int insert(UStudent record);

    int insertSelective(UStudent record);

    List<UStudent> selectByExample(UStudentExample example);

    UStudent selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") UStudent record, @Param("example") UStudentExample example);

    int updateByExample(@Param("record") UStudent record, @Param("example") UStudentExample example);

    int updateByPrimaryKeySelective(UStudent record);

    int updateByPrimaryKey(UStudent record);
}