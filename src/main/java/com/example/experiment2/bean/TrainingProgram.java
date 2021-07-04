package com.example.experiment2.bean;

public class TrainingProgram {
    private Integer courseId;

    private String courseName;

    private String courseNature;

    private String courseMajor;

    private String courseTeacher;

    private String courseAttributes;

    private String preliminaryCourse;

    private String followupCourse;

    public TrainingProgram() {
    }

    public TrainingProgram(Integer courseId, String courseName, String courseNature, String courseMajor, String courseTeacher, String courseAttributes, String preliminaryCourse, String followupCourse) {
        this.courseId = courseId;
        this.courseName = courseName;
        this.courseNature = courseNature;
        this.courseMajor = courseMajor;
        this.courseTeacher = courseTeacher;
        this.courseAttributes = courseAttributes;
        this.preliminaryCourse = preliminaryCourse;
        this.followupCourse = followupCourse;
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

    public String getCourseMajor() {
        return courseMajor;
    }

    public void setCourseMajor(String courseMajor) {
        this.courseMajor = courseMajor == null ? null : courseMajor.trim();
    }

    public String getCourseTeacher() {
        return courseTeacher;
    }

    public void setCourseTeacher(String courseTeacher) {
        this.courseTeacher = courseTeacher == null ? null : courseTeacher.trim();
    }

    public String getCourseAttributes() {
        return courseAttributes;
    }

    public void setCourseAttributes(String courseAttributes) {
        this.courseAttributes = courseAttributes == null ? null : courseAttributes.trim();
    }

    public String getPreliminaryCourse() {
        return preliminaryCourse;
    }

    public void setPreliminaryCourse(String preliminaryCourse) {
        this.preliminaryCourse = preliminaryCourse == null ? null : preliminaryCourse.trim();
    }

    public String getFollowupCourse() {
        return followupCourse;
    }

    public void setFollowupCourse(String followupCourse) {
        this.followupCourse = followupCourse == null ? null : followupCourse.trim();
    }

    @Override
    public String toString() {
        return "TrainingProgram{" +
                "courseId=" + courseId +
                ", courseName='" + courseName + '\'' +
                ", courseNature='" + courseNature + '\'' +
                ", courseMajor='" + courseMajor + '\'' +
                ", courseTeacher='" + courseTeacher + '\'' +
                ", courseAttributes='" + courseAttributes + '\'' +
                ", preliminaryCourse='" + preliminaryCourse + '\'' +
                ", followupCourse='" + followupCourse + '\'' +
                '}';
    }
}