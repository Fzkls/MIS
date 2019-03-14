package com.stu.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.stu.pojo.ClassPojo;
import com.stu.service.ClassService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class ClassController {
	
	@Resource
	private ClassService classService;
	
	@RequestMapping("/class/change")
	@ResponseBody
	public String changeClass(@RequestBody String ccl) {
		JSONObject json = JSONObject.fromObject(ccl);
		ClassPojo cl = (ClassPojo) JSONObject.toBean(json, ClassPojo.class);
		//System.out.println(cl);
		if (classService.updateClass(cl)> 0) {
			return "success";
		} else {
			return "false";
		}
	}

	@RequestMapping("/class/delete")
	@ResponseBody
	public String deleteByCno(@RequestBody String dcno) {
		JSONObject json = JSONObject.fromObject(dcno);
		//System.out.println(json);
		if (classService.deleteClass(json.getString("cno"))> 0) {
			return "success";
		} else {
			return "false";
		}
	}

	@RequestMapping("/class/insert")
	@ResponseBody
	public String insertClass(@RequestBody String icl) {
		JSONObject json = JSONObject.fromObject(icl);
		ClassPojo cl = (ClassPojo) JSONObject.toBean(json, ClassPojo.class);
		//System.out.println(cl);
		if (classService.insertClass(cl)> 0) {
			return "success";
		} else {
			return "false";
		}
	}
}
