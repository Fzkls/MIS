package com.stu.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.stu.pojo.ScorePojo;
import com.stu.service.ScoreService;

import net.sf.json.JSONObject;

@Controller
public class ScoreController {

	@Resource
	private ScoreService scoreService;
	
	@RequestMapping("/score/change")
	@ResponseBody
	public String changeScore(@RequestBody String csocre) {
		JSONObject json = JSONObject.fromObject(csocre);
		ScorePojo score = (ScorePojo) JSONObject.toBean(json, ScorePojo.class);
		//System.out.println(cl);
		if (scoreService.updateScore(score)> 0) {
			return "success";
		} else {
			return "false";
		}
	}

	@RequestMapping("/score/delete")
	@ResponseBody
	public String deleteByScore(@RequestBody String dscore) {
		JSONObject json = JSONObject.fromObject(dscore);
		ScorePojo score = (ScorePojo) JSONObject.toBean(json, ScorePojo.class);
		//System.out.println(score);
		if (scoreService.deleteScore(score)> 0) {
			return "success";
		} else {
			return "false";
		}
	}

	@RequestMapping("/score/insert")
	@ResponseBody
	public String insertScore(@RequestBody String iscore) {
		JSONObject json = JSONObject.fromObject(iscore);
		ScorePojo score = (ScorePojo) JSONObject.toBean(json, ScorePojo.class);
		if (scoreService.insertScore(score)> 0) {
			return "success";
		} else {
			return "false";
		}
	}
	
}
