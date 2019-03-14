package com.stu.dao;

import java.util.List;

import com.stu.pojo.Student;

public interface StudentDao {

	public Student selectStudentById(String sno);
	
	public Student selectStudentByName(String sn);
	
	public List<Student> selectStudentAll();
	
	public int updateStudent(Student stu);
	
	public int deleteStudent(String sno);
	
	public int insertStudent(Student stu);
}