package com.stu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.stu.dao.StudentDao;
import com.stu.pojo.Student;

@Service

public class StudentServiceImpl implements StudentService {

	@Autowired

	private StudentDao studentDao;

	public Student selectStudentById(String sno) {
		// TODO Auto-generated method stub
		return studentDao.selectStudentById(sno);
	}

	public List<Student> selectStudentAll() {
		// TODO Auto-generated method stub
		return studentDao.selectStudentAll();
	}
	
	public int updateStudent(Student stu) {
		return studentDao.updateStudent(stu);
	}

	public int deleteStudent(String sno) {
		// TODO Auto-generated method stub
		return studentDao.deleteStudent(sno);
	}

	public int insertStudent(Student stu) {
		// TODO Auto-generated method stub
		return studentDao.insertStudent(stu);
	}
	
	


}