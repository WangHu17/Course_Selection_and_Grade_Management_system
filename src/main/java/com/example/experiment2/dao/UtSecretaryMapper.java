package com.example.experiment2.dao;

import com.example.experiment2.bean.UtSecretary;
import com.example.experiment2.bean.UtSecretaryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UtSecretaryMapper {
    long countByExample(UtSecretaryExample example);

    int deleteByExample(UtSecretaryExample example);

    int deleteByPrimaryKey(String id);

    int insert(UtSecretary record);

    int insertSelective(UtSecretary record);

    List<UtSecretary> selectByExample(UtSecretaryExample example);

    UtSecretary selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") UtSecretary record, @Param("example") UtSecretaryExample example);

    int updateByExample(@Param("record") UtSecretary record, @Param("example") UtSecretaryExample example);

    int updateByPrimaryKeySelective(UtSecretary record);

    int updateByPrimaryKey(UtSecretary record);
}