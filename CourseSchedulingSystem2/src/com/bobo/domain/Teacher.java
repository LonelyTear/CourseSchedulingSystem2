package com.bobo.domain;

import java.sql.Timestamp;
import java.util.Date;
/**
 * 老师
 * @author King
 *
 */
public class Teacher {
	private Integer id;// 主键$$
	private String name;//名字$$
	private Integer priority;//优先级 1高,2中,3低(越高表示越有可能聘用该老师)$$
	private Integer effect;//启用标志 1 启用 ,0 禁用 (相当于虚拟删除标志)
	private String address;//地址
	private Date birthDate;//生日
	private Timestamp updateTime;//更新时间

	public Integer getEffect() {
		return effect;
	}
	public void setEffect(Integer effect) {
		this.effect = effect;
	}
	public Teacher(Integer id, String name, Integer priority, Integer effect,
			String address, Date birthDate, Timestamp updateTime) {
		super();
		this.id = id;
		this.name = name;
		this.priority = priority;
		this.effect = effect;
		this.address = address;
		this.birthDate = birthDate;
		this.updateTime = updateTime;
	}
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
	public Integer getPriority() {
		return priority;
	}
	public void setPriority(Integer priority) {
		this.priority = priority;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public Timestamp getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}
	public Teacher() {
		super();
	}
	
	
}
