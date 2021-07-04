package com.example.experiment2.service;

import com.example.experiment2.bean.Student;
import com.example.experiment2.bean.UStudent;
import com.example.experiment2.bean.UTeacher;
import com.example.experiment2.bean.UtSecretary;
import com.example.experiment2.dao.StudentMapper;
import com.example.experiment2.dao.UStudentMapper;
import com.example.experiment2.dao.UTeacherMapper;
import com.example.experiment2.dao.UtSecretaryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author wanghu
 * @discrption：
 * @create 2021-05-08 20:49
 */
@Service
public class LoginService {

    @Autowired
    private UStudentMapper uStudentMapper;
    @Autowired
    private UTeacherMapper uTeacherMapper;
    @Autowired
    private UtSecretaryMapper utSecretaryMapper;
    @Autowired
    private StudentMapper studentMapper;

    public UStudent getUserInfo(String id) {
        return uStudentMapper.selectByPrimaryKey(id);
    }

    public Student getUsernameById(String id) {
        return studentMapper.selectByPrimaryKey(id);
    }

    public UTeacher getTeacherInfo(String id) {
        return uTeacherMapper.selectByPrimaryKey(id);
    }

    public UtSecretary getSecretaryInfo(String id) {
        return utSecretaryMapper.selectByPrimaryKey(id);
    }
}
