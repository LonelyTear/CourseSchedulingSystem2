package com.bobo.service;

import java.util.Date;
import java.sql.Timestamp;
import java.util.List;

import junit.framework.TestCase;

import com.bobo.config.SqlMapFactory;
import com.bobo.domain.Course;
import com.bobo.domain.Grade;
import com.bobo.domain.Room;
import com.bobo.domain.Subject;
import com.bobo.domain.Teacher;
import com.bobo.domain.TeacherSubject;
import com.bobo.domain.virtual.Plan;
import com.ibatis.sqlmap.client.SqlMapClient;

public class TestCaseDemo extends TestCase {
	static SqlMapClient sqlMap = SqlMapFactory.getSqlMap();

	public static void testClazzRoom() throws Exception {
		List<Room> list = sqlMap.queryForList("clazzroom.select");
		for (Room obj : list) {
			System.out.println(obj.toString());
		}
	}

	public static void testCourse() throws Exception {
		List<Course> list = sqlMap.queryForList("course.select");
		for (Course obj : list) {
			System.out.println(obj.toString());
		}
	}

	public static void testStudent() throws Exception {
		// List<Student> list = sqlMap.queryForList("student.select");
		// for (Student obj : list) {
		// System.out.println(obj.toString());
		// }

		Integer counts = (Integer) sqlMap.queryForObject("student.count");
		System.out.println(counts);
	}

	public static void testSubject() throws Exception {
		List<Subject> list = sqlMap.queryForList("subject.select");
		for (Subject obj : list) {
			System.out.println(obj.toString());
		}
	}

	public static void testGrade() throws Exception {
		List<Grade> list = sqlMap.queryForList("grade.select");
		for (Grade obj : list) {
			System.out.println(obj.toString());
		}
	}

	public static void testTeacher() throws Exception {
		List<Teacher> list = sqlMap.queryForList("teacher.select");
		for (Teacher obj : list) {
			System.out.println(obj.toString());
		}

	}

	public static void testTeacherSubject() throws Exception {
		List<TeacherSubject> list = sqlMap
				.queryForList("teachersubject.select");
		for (TeacherSubject obj : list) {
			System.out.println(obj.toString());
		}
	}

	public static void testPlan() throws Exception {
		try {
			Date d = new Date();
			Plan planForDelete = new Plan(16, 999, 999, 999, 999, 999, 999, 999, 999, 999, new Timestamp(d.getTime()));
			Plan planForInsert = new Plan(16, 999, 999, 999, 999, 999, 999, 999, 999, 999, new Timestamp(d.getTime()));
			Plan planForSelect = new Plan(18, null, null, null, null, null, null, null, null, null, new Timestamp(d.getTime()));
			Plan planForUpdate = new Plan(18, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, new Timestamp(d.getTime()));
			//查询所有
//			List<Plan> list = sqlMap.queryForList("plan.select");
//			for (Plan obj : list) {
//				System.out.println(obj.toString());
//			}
			
//			System.out.println("delete   "+sqlMap.update("plan.delete", planForDelete));//删
			System.out.println("insert   "+sqlMap.insert("plan.insert", planForInsert));//增
//			List<Plan> argList = sqlMap.queryForList("plan.select", planForSelect);//查询部分
//			for (Plan obj : argList) {
//				System.out.println(obj.toString());
//			}
//			System.out.println("update   "+sqlMap.update("plan.update", planForUpdate));//更新
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
