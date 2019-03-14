package com.stu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stu.dao.ScoreDao;
import com.stu.pojo.ScorePojo;

@Service
public class ScoreServiceImpl implements ScoreService {
	@Autowired
	private ScoreDao scoreDao;
	
	public List<ScorePojo> selectAllScore() {
		// TODO Auto-generated method stub
		return scoreDao.selectAllScore();
	}

	public int insertScore(ScorePojo score) {
		// TODO Auto-generated method stub
		return scoreDao.insertScore(score);
	}

	public int updateScore(ScorePojo score) {
		// TODO Auto-generated method stub
		return scoreDao.updateScore(score);
	}

	public int deleteScore(ScorePojo score) {
		// TODO Auto-generated method stub
		return scoreDao.deleteScore(score);
	}

}
