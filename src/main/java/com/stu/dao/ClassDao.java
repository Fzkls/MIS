package com.stu.dao;

import java.util.List;
import com.stu.pojo.ClassPojo;
public interface ClassDao {
	public List<ClassPojo> selectAllClass();
	
	public int insertClass(ClassPojo cl);
	
	public int updateClass(ClassPojo cl);
	
	public int deleteClass(String cno);
}
