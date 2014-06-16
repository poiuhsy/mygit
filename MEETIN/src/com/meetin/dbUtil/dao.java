package com.meetin.dbUtil;

import java.io.IOException;
import java.io.Reader;
import java.nio.charset.Charset;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public abstract class dao {
	private static SqlMapClient sqlMapper;

	public dao() {
		if (sqlMapper == null) {
			setMapper();
		}
		
	}
	private static void setMapper() {
		try {		
			Charset charset = Charset.forName("UTF-8");
			Resources.setCharset(charset);
			Reader reader = Resources.getResourceAsReader("sqlMapConfig.xml");
			sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
			System.out.println("접속 성공  ");
			reader.close();
		} catch (IOException IO_E) {
			System.out.println("접속 실패 : "+IO_E.toString());
		}
	}
	public static SqlMapClient getMapper(){
		if (sqlMapper == null) {
			setMapper();
		} 
		return sqlMapper;
	}
}
