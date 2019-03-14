package com.stu.service;

import java.util.List;

import com.stu.pojo.ScorePojo;

public interface ScoreService {
	public List<ScorePojo> selectAllScore();

	public int insertScore(ScorePojo score);

	public int updateScore(ScorePojo score);

	public int deleteScore(ScorePojo score);
}
