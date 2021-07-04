package com.example.experiment2.bean;

public class ClassInfo {
    private String className;

    private Integer studentNum;

    private String monitor;

    private String studyCommittee;

    private String lifeCommittee;

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className == null ? null : className.trim();
    }

    public Integer getStudentNum() {
        return studentNum;
    }

    public void setStudentNum(Integer studentNum) {
        this.studentNum = studentNum;
    }

    public String getMonitor() {
        return monitor;
    }

    public void setMonitor(String monitor) {
        this.monitor = monitor == null ? null : monitor.trim();
    }

    public String getStudyCommittee() {
        return studyCommittee;
    }

    public void setStudyCommittee(String studyCommittee) {
        this.studyCommittee = studyCommittee == null ? null : studyCommittee.trim();
    }

    public String getLifeCommittee() {
        return lifeCommittee;
    }

    public void setLifeCommittee(String lifeCommittee) {
        this.lifeCommittee = lifeCommittee == null ? null : lifeCommittee.trim();
    }
}