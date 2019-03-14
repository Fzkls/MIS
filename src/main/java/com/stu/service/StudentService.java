package com.stu.service;

import java.util.List;

import com.stu.pojo.Student;

public interface StudentService {

	public List<Student> selectStudentAll();

	public int updateStudent(Student stu);

	public int deleteStudent(String sno);

	public int insertStudent(Student stu);
}