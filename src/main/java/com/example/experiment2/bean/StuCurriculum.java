package com.example.experiment2.bean;

public class StuCurriculum {
    private Integer id;

    private Integer courseId;

    private String courseName;

    private String courseNature;

    private String courseSelectedId;

    private String courseSelectedStu;

    private String courseStatus;

    private Integer grade;

    public StuCurriculum() {
    }

    public StuCurriculum(Integer id, Integer courseId, String courseName, String courseNature, String courseSelectedId, String courseSelectedStu, String courseStatus, Integer grade) {
        this.id = id;
        this.courseId = courseId;
        this.courseName = courseName;
        this.courseNature = courseNature;
        this.courseSelectedId = courseSelectedId;
        this.courseSelectedStu = courseSelectedStu;
        this.courseStatus = courseStatus;
        this.grade = grade;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName == null ? null : courseName.trim();
    }

    public String getCourseNature() {
        return courseNature;
    }

    public void setCourseNature(String courseNature) {
        this.courseNature = courseNature == null ? null : courseNature.trim();
    }

    public String getCourseSelectedId() {
        return courseSelectedId;
    }

    public void setCourseSelectedId(String courseSelectedId) {
        this.courseSelectedId = courseSelectedId == null ? null : courseSelectedId.trim();
    }

    public String getCourseSelectedStu() {
        return courseSelectedStu;
    }

    public void setCourseSelectedStu(String courseSelectedStu) {
        this.courseSelectedStu = courseSelectedStu == null ? null : courseSelectedStu.trim();
    }

    public String getCourseStatus() {
        return courseStatus;
    }

    public void setCourseStatus(String courseStatus) {
        this.courseStatus = courseStatus == null ? null : courseStatus.trim();
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    @Override
    public String toString() {
        return "StuCurriculum{" +
                "id=" + id +
                ", courseId=" + courseId +
                ", courseName='" + courseName + '\'' +
                ", courseNature='" + courseNature + '\'' +
                ", courseSelectedId='" + courseSelectedId + '\'' +
                ", courseSelectedStu='" + courseSelectedStu + '\'' +
                ", courseStatus='" + courseStatus + '\'' +
                ", grade=" + grade +
                '}';
    }
}