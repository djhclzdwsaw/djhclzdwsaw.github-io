package com.zyglxt.bean;

public class Course {
    //课程名称 课程类型 课程性质 考试类型 学年 教师
    private String coursename;
    private String coursetype;
    private String coursenature;
    private String examtype;
    private String year;
    private String teacher;
    private String student;

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getCoursetype() {
        return coursetype;
    }

    public void setCoursetype(String coursetype) {
        this.coursetype = coursetype;
    }

    public String getCoursenature() {
        return coursenature;
    }

    public void setCoursenature(String coursenature) {
        this.coursenature = coursenature;
    }

    public String getExamtype() {
        return examtype;
    }

    public void setExamtype(String examtype) {
        this.examtype = examtype;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getStudent() {
        return student;
    }

    public void setStudent(String student) {
        this.student = student;
    }

    public Course(String coursename, String coursetype, String coursenature, String examtype, String year, String teacher,String student) {
        this.coursename = coursename;
        this.coursetype = coursetype;
        this.coursenature = coursenature;
        this.examtype = examtype;
        this.year = year;
        this.teacher = teacher;
        this.student = student;
    }
}
