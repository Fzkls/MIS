package com.stu.service;

import java.util.List;

import com.stu.pojo.ClassPojo;

public interface ClassService {
	public List<ClassPojo> selectAllClass();

	public int insertClass(ClassPojo cl);

	public int updateClass(ClassPojo cl);

	public int deleteClass(String cno);
}
