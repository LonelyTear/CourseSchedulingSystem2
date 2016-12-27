package com.bobo.domain;

import java.sql.Timestamp;
import java.util.Date;
/**
 * 每个年级上课次数表
 * @author King
 *
 */
public class Grade {
	private Integer id;// 主键$$
	private Integer level;//年级$$
	private Integer subjectId;//课目id,指向Subject对象的id$$
	private Integer minPerDay;//每天最少上课次$$
	private Integer maxPerDay;//每天最多上课次数$$
	private Integer perWeek;//每周最多上课次数$$
	
	private Timestamp updateTime;//更新时间

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public Integer getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(Integer subjectId) {
		this.subjectId = subjectId;
	}

	public Integer getMinPerDay() {
		return minPerDay;
	}

	public void setMinPerDay(Integer minPerDay) {
		this.minPerDay = minPerDay;
	}

	public Integer getMaxPerDay() {
		return maxPerDay;
	}

	public void setMaxPerDay(Integer maxPerDay) {
		this.maxPerDay = maxPerDay;
	}

	public Integer getPerWeek() {
		return perWeek;
	}

	public void setPerWeek(Integer perWeek) {
		this.perWeek = perWeek;
	}

	public Timestamp getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

	public Grade(Integer id, Integer level, Integer subjectId,
			Integer minPerDay, Integer maxPerDay, Integer perWeek,
			Timestamp updateTime) {
		super();
		this.id = id;
		this.level = level;
		this.subjectId = subjectId;
		this.minPerDay = minPerDay;
		this.maxPerDay = maxPerDay;
		this.perWeek = perWeek;
		this.updateTime = updateTime;
	}

	public Grade() {
		super();
	}



}
