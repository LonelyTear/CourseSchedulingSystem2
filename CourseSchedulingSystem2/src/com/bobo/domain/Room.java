package com.bobo.domain;

import java.sql.Timestamp;

public class Room {
	private Integer id;// 主键$$
	private String name;//教室名$$
	private Integer clazzRoomType;//教室类型: 1 普通教室, 2计算机, 3艺术, 4体育$$
	private Integer islimit;//是否有人数限制 (1有限制,0 无限制) 默认为0 $$
	private Integer maxPersons;//当islimit =1，本教室最大人数$$
	
	
	private String clazzroomnamee;
	private Integer status;
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
	public Integer getClazzRoomType() {
		return clazzRoomType;
	}
	public void setClazzRoomType(Integer clazzRoomType) {
		this.clazzRoomType = clazzRoomType;
	}
	public Integer getIslimit() {
		return islimit;
	}
	public void setIslimit(Integer islimit) {
		this.islimit = islimit;
	}
	public Integer getMaxPersons() {
		return maxPersons;
	}
	public void setMaxPersons(Integer maxPersons) {
		this.maxPersons = maxPersons;
	}
	public String getClazzroomnamee() {
		return clazzroomnamee;
	}
	public void setClazzroomnamee(String clazzroomnamee) {
		this.clazzroomnamee = clazzroomnamee;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Timestamp getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}
	public Room(Integer id, String name, Integer clazzRoomType,
			Integer islimit, Integer maxPersons, String clazzroomnamee,
			Integer status, Timestamp updateTime) {
		super();
		this.id = id;
		this.name = name;
		this.clazzRoomType = clazzRoomType;
		this.islimit = islimit;
		this.maxPersons = maxPersons;
		this.clazzroomnamee = clazzroomnamee;
		this.status = status;
		this.updateTime = updateTime;
	}
	public Room() {
		super();
	}
	
	
}
