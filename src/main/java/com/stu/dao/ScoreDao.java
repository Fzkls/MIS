package com.stu.dao;

import java.util.List;

import com.stu.pojo.ScorePojo;

public interface ScoreDao {
	public List<ScorePojo> selectAllScore();

	public int insertScore(ScorePojo score);

	public int updateScore(ScorePojo score);

	public int deleteScore(ScorePojo score);
}
