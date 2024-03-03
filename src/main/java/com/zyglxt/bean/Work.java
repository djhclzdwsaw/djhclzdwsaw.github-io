package com.zyglxt.bean;

public class Work {
    //作业名称 课程名称 教师 作业类型 成绩类型 成绩 批阅方式 截止日期 状态 文件路径
    private String workname;
    private String coursename;
    private String teacher;
    private String worktype;
    private String gradetype;
    private String grade;
    private String reviewmethod;
    private String type;
    private String deadline;
    private String file;
    private String student;


    public String getWorkname() {
        return workname;
    }

    public void setWorkname(String workname) {
        this.workname = workname;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getWorktype() {
        return worktype;
    }

    public void setWorktype(String worktype) {
        this.worktype = worktype;
    }

    public String getGradetype() {
        return gradetype;
    }

    public void setGradetype(String gradetype) {
        this.gradetype = gradetype;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getReviewmethod() {
        return reviewmethod;
    }

    public void setReviewmethod(String reviewmethod) {
        this.reviewmethod = reviewmethod;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }

    public String getStudent() {
        return student;
    }

    public void setStudent(String student) {
        this.student = student;
    }

    public Work(String workname, String coursename, String teacher, String worktype, String gradetype, String grade, String reviewmethod, String deadline, String type, String file,String student) {
        this.workname = workname;
        this.coursename = coursename;
        this.teacher = teacher;
        this.worktype = worktype;
        this.gradetype = gradetype;
        this.grade = grade;
        this.reviewmethod = reviewmethod;
        this.deadline = deadline;
        this.type = type;
        this.file = file;
        this.student = student;
    }


}