package com.bobo.domain;

import java.sql.Timestamp;
import java.util.Date;

/**
 * 学生
 * 
 * @author King
 *
 */
public class Student {
	private Integer id;// 主键$$
	private String name;// 名字$$
	private Integer level;// 年级$$
	private String specifiedClazz;// 指定班代号,默认不指定(如属于数学快1班,数学快2班,数学慢1班,数学慢2班)$$
	
	private String address;// 地址
	private Double tuition;// 学费
	private Date birthDate;// 生日
	private Timestamp updateTime;// 更新时间

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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Double getTuition() {
		return tuition;
	}

	public void setTuition(Double tuition) {
		this.tuition = tuition;
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

	public String getSpecifiedClazz() {
		return specifiedClazz;
	}

	public void setSpecifiedClazz(String specifiedClazz) {
		this.specifiedClazz = specifiedClazz;
	}

	public Student(Integer id, String name, Integer level, String address,
			Double tuition, Date birthDate, Timestamp updateTime) {
		super();
		this.id = id;
		this.name = name;
		this.level = level;
		this.address = address;
		this.tuition = tuition;
		this.birthDate = birthDate;
		this.updateTime = updateTime;
	}

	public Student() {
		super();
	}

}
