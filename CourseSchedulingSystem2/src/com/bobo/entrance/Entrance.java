package com.bobo.entrance;

import java.util.List;

import com.bobo.common.CountTool;
import com.bobo.config.SqlMapFactory;
import com.bobo.domain.Grade;
import com.bobo.domain.Student;
import com.bobo.domain.Subject;
import com.ibatis.sqlmap.client.SqlMapClient;

public class Entrance {
	static SqlMapClient sqlMap = SqlMapFactory.getSqlMap();  
	static int MAX_PER_WEEK = 25;
	static int LEVEL5 = 5;
	/**
	 * 以5年级为例
	 * @param args
	 * @throws Exception
	 */
	public static void main(String[] args) throws Exception{
		
		 Integer studentCounts = (Integer) sqlMap.queryForObject("student.count");//现在只有5年级的
		 List<Student> studentList = sqlMap.queryForList("student.select");
		 System.out.println(String.format("5年级学生共有%d",studentCounts));
		 
		 List<Subject> subjectList = sqlMap.queryForList("subject.select");
		 for(Subject subject : subjectList){
			 int needClazzCount = CountTool.needCount(studentCounts, subject.getMaxPersons()) ;//当前年级需要开的某门科目的班数
			 
			 //查某一年级每天最少和最多上课次数
			 Grade grade = new Grade();
			 grade.setLevel(LEVEL5);
			 grade.setSubjectId(subject.getId());
			 List<Grade> list = sqlMap.queryForList("grade.select",grade);
			 //计算每天开课次数
			 int maxClazz = MAX_PER_WEEK / grade.getPerWeek();

			 System.out.println( String.format("【%s】科目每班最多%d人,最少需要开%d个班,一个老师最多教%d个班", 
					 								subject.getName(),subject.getMaxPersons(), maxClazz));
		 }
		 
		 
		 
	}
	
	
}
