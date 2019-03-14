package com.stu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stu.dao.ClassDao;
import com.stu.pojo.ClassPojo;

@Service

public class ClassServiceImpl implements ClassService{
	@Autowired

	private ClassDao classDao;

	public List<ClassPojo> selectAllClass() {
		// TODO Auto-generated method stub
		return classDao.selectAllClass();
	}

	public int insertClass(ClassPojo cl) {
		// TODO Auto-generated method stub
		return classDao.insertClass(cl);
	}

	public int updateClass(ClassPojo cl) {
		// TODO Auto-generated method stub
		return classDao.updateClass(cl);
	}

	public int deleteClass(String cno) {
		// TODO Auto-generated method stub
		return classDao.deleteClass(cno);
	}
	
}
