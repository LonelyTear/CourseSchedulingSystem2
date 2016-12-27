package com.bobo.domain.virtual;

import java.sql.Timestamp;
import java.util.Date;

/**
 * 随机分配后的班级,完全针对学生而造<br/>
 * 大表数据<br/>
 * @author King
 *
 */
public class Plan {
	private Integer id;// 主键(无用)$$
	
	private Integer level;//年级$$
	private Integer studentId ;//学生id$$
	private Integer subjectId;//科目id$$
	private Integer clazz;//归属班级(1代表1班,3代表3班)  [这里有个约束: 很多情况并不能必须是每班15人] {先别分快慢班这了,我们可以先随机分好班以后,再去手动交换学生位置,形成快慢班}
	private Integer courseId;//课程id
	private Integer teacherId;//老师id
	private Integer roomId;//教室id
	private Integer weekNumber;//周几$$
	private Integer lessonNumber;//第几节课$$
	
	
	private Timestamp updateTime;//更新时间


	public Plan(Integer id, Integer level, Integer studentId,
			Integer subjectId, Integer clazz, Integer courseId,
			Integer teacherId, Integer roomId, Integer weekNumber,
			Integer lessonNumber, Timestamp updateTime) {
		super();
		this.id = id;
		this.level = level;
		this.studentId = studentId;
		this.subjectId = subjectId;
		this.clazz = clazz;
		this.courseId = courseId;
		this.teacherId = teacherId;
		this.roomId = roomId;
		this.weekNumber = weekNumber;
		this.lessonNumber = lessonNumber;
		this.updateTime = updateTime;
	}


	public Plan() {
		super();
	}


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


	public Integer getStudentId() {
		return studentId;
	}


	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}


	public Integer getSubjectId() {
		return subjectId;
	}


	public void setSubjectId(Integer subjectId) {
		this.subjectId = subjectId;
	}


	public Integer getClazz() {
		return clazz;
	}


	public void setClazz(Integer clazz) {
		this.clazz = clazz;
	}


	public Integer getCourseId() {
		return courseId;
	}


	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}


	public Integer getTeacherId() {
		return teacherId;
	}


	public void setTeacherId(Integer teacherId) {
		this.teacherId = teacherId;
	}


	public Integer getRoomId() {
		return roomId;
	}


	public void setRoomId(Integer roomId) {
		this.roomId = roomId;
	}


	public Integer getWeekNumber() {
		return weekNumber;
	}


	public void setWeekNumber(Integer weekNumber) {
		this.weekNumber = weekNumber;
	}


	public Integer getLessonNumber() {
		return lessonNumber;
	}


	public void setLessonNumber(Integer lessonNumber) {
		this.lessonNumber = lessonNumber;
	}


	public Timestamp getUpdateTime() {
		return updateTime;
	}


	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}


	@Override
	public String toString() {
		return "Plan [id=" + id + ", level=" + level + ", studentId="
				+ studentId + ", subjectId=" + subjectId + ", clazz=" + clazz
				+ ", courseId=" + courseId + ", teacherId=" + teacherId
				+ ", roomId=" + roomId + ", weekNumber=" + weekNumber
				+ ", lessonNumber=" + lessonNumber + "]";
	}


	
}
