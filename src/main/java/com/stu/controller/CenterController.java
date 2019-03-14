package com.stu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stu.pojo.Student;
import com.stu.service.ClassService;
import com.stu.service.ScoreService;
import com.stu.service.StudentService;

import net.sf.json.JSONArray;
import com.stu.pojo.ClassPojo;
import com.stu.pojo.ScorePojo;

@Controller
public class CenterController {
	@Resource
	private StudentService stuService;
	@Resource
	private ClassService classService;
	@Resource
	private ScoreService scoreService;

	@RequestMapping("/")
	public ModelAndView getIndex() {

		ModelAndView mav = new ModelAndView("index");
		List<ClassPojo> cl = classService.selectAllClass();
		//System.out.println(cl);
		List<Student> stu = stuService.selectStudentAll();
		//System.out.println(stu);
		List<ScorePojo> score = scoreService.selectAllScore();
		//System.out.println(score);
		List<Object> list = new ArrayList<Object>();
		list.add(stu);
		list.add(cl);
		list.add(score);
		JSONArray jsonarray = JSONArray.fromObject(list);
		mav.addObject("list", jsonarray);
		return mav;
	}
}
