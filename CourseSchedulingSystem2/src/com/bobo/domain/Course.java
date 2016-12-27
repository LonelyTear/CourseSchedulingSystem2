package com.bobo.domain;

import java.sql.Timestamp;
import java.util.Date;

/**
 * 课程(如5年级英语L1 , 6年级物理L1)
 * @author King
 *
 */
public class Course {
	private Integer id;//主键$$
	private String name;//名字$$
	private Integer level;//年级$$
	private Integer subjectId;//课程类别id  指向Subject的id$$
	private Integer clazzRoomType;//教室类型: 1 普通教室, 2计算机, 3艺术, 4体育$$
	
	
	private Timestamp updateTime;//更新时间


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
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


	public Integer getClazzRoomType() {
		return clazzRoomType;
	}


	public void setClazzRoomType(Integer clazzRoomType) {
		this.clazzRoomType = clazzRoomType;
	}


	public Timestamp getUpdateTime() {
		return updateTime;
	}


	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}


	public Course(Integer id, String name, Integer level, Integer subjectId,
			Integer clazzRoomType, Timestamp updateTime) {
		super();
		this.id = id;
		this.name = name;
		this.level = level;
		this.subjectId = subjectId;
		this.clazzRoomType = clazzRoomType;
		this.updateTime = updateTime;
	}


	public Course() {
		super();
	}
	
	
}
