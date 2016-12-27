package com.bobo.domain;

import java.sql.Timestamp;
import java.util.Date;

/**
 * 科目(英文	数学	科学	吃饭	社会	外语	体育/艺术	选修 )
 * @author King
 *
 */
public class Subject {
	private Integer id;// 主键$$
	private String name;//名字$$
	private Integer majorFlag;//主修标记(1是主修,0是选修,2中饭)$$
	private Integer maxPersons;//上课最大人数$$
	
	
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


	public Integer getMajorFlag() {
		return majorFlag;
	}


	public void setMajorFlag(Integer majorFlag) {
		this.majorFlag = majorFlag;
	}


	public Integer getMaxPersons() {
		return maxPersons;
	}


	public void setMaxPersons(Integer maxPersons) {
		this.maxPersons = maxPersons;
	}


	public Timestamp getUpdateTime() {
		return updateTime;
	}


	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}


	public Subject(Integer id, String name, Integer majorFlag,
			Integer maxPersons, Timestamp updateTime) {
		super();
		this.id = id;
		this.name = name;
		this.majorFlag = majorFlag;
		this.maxPersons = maxPersons;
		this.updateTime = updateTime;
	}


	public Subject() {
		super();
	}
	
	
	
}
