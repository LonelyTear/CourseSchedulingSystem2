package com.bobo.config;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class SqlMapFactory {
	private static String config = null;
	private static Reader reader = null;
	public static SqlMapClient sqlMap = null;
	static{
		config = "com/bobo/config/SqlMapConfig.xml";    
		try {
			reader = Resources.getResourceAsReader(config);
		} catch (IOException e) {
			e.printStackTrace();
		}    
		sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
	}
	public static SqlMapClient getSqlMap() {
		
		return sqlMap;
	}
	public static void setSqlMap(SqlMapClient sqlMap) {
		SqlMapFactory.sqlMap = sqlMap;
	}
	public static void main(String[] args) {
		System.out.println("ee");
	}
	
}
