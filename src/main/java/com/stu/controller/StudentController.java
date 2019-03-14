package com.stu.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.stu.pojo.Student;
import com.stu.service.StudentService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller

public class StudentController {

	@Resource
	private StudentService stuService;

	/*@RequestMapping("/")

	public ModelAndView getIndex() {

		ModelAndView mav = new ModelAndView("index1");

		List<Student> stu = stuService.selectStudentAll();
		JSONArray jsonarray = JSONArray.fromObject(stu);
		mav.addObject("stu", jsonarray);
		return mav;
	}*/

	@RequestMapping(value = "/stu/change", method = RequestMethod.POST)
	@ResponseBody
	public String changeinfo(@RequestBody String cstu) {
		JSONObject json = JSONObject.fromObject(cstu);
		Student stu = (Student) JSONObject.toBean(json, Student.class);
		//System.out.println(stu);
		if (stuService.updateStudent(stu) > 0) {
			return "success";
		} else {
			return "false";
		}
	}

	@RequestMapping("/stu/delete")
	@ResponseBody
	public String deleteBySno(@RequestBody String dsno) {
		JSONObject json = JSONObject.fromObject(dsno);
		// System.out.println(dsno+" "+json.getString("sno"));
		if (stuService.deleteStudent(json.getString("sno")) > 0) {
			return "success";
		} else {
			return "false";
		}
	}

	@RequestMapping("/stu/insert")
	@ResponseBody
	public String insertStudent(@RequestBody String istu) {
		JSONObject json = JSONObject.fromObject(istu);
		Student stu = (Student) JSONObject.toBean(json, Student.class);
		if (stuService.insertStudent(stu) > 0) {
			return "success";
		} else {
			return "false";
		}
	}

}