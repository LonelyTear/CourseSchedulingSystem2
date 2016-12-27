package com.bobo.domain;

import java.sql.Timestamp;
import java.util.Date;
/**
 * 老师教授课程
 * @author King
 *
 */
public class TeacherSubject {
	private Integer id;// 主键$$
	private String name;//名字$$
	private Integer courseId;//课程id$$ 指向Course对象的id$$
	private String courseName;//课程name 指向Course对象的name$$
	private Integer level;//年级$$
	private Integer subjectId;//科目id$$指向Subject对象的id$$
	
	
	private String address;//地址
	private Date birthDate;//生日
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
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
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
	public TeacherSubject(Integer id, String name, Integer courseId,
			String courseName, Integer level, Integer subjectId,
			String address, Date birthDate, Timestamp updateTime) {
		super();
		this.id = id;
		this.name = name;
		this.courseId = courseId;
		this.courseName = courseName;
		this.level = level;
		this.subjectId = subjectId;
		this.address = address;
		this.birthDate = birthDate;
		this.updateTime = updateTime;
	}
	public TeacherSubject() {
		super();
	}
	
	
}
