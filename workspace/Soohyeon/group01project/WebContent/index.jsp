<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.busanit01.sqlMap.SqlSessionManager" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactory" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="java.util.*" %>
<%@ page import="com.busanit01.dto.MemberDTO" %>
<%@ page import="com.busanit01.dto.BoardDTO" %>
<%@ page import="com.busanit01.dto.ClassDTO" %>
<%@ page import="com.busanit01.dto.OrderDTO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Test</title>
</head>
<body>

<%!

	List<MemberDTO> memberList = null;
	MemberDTO memberOne;
	MemberDTO tmp;

%>

<%

	tmp.setMem_id("abc");	

%>


<%		

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	try{

		memberList = sqlSession.selectList("com.busanit01.sqlMap.mapper.ProjectMapper.selectMemberAll");
		//memberOne = sqlSession.selectOne("com.busanit01.sqlMap.mapper.ProjectMapper.selectMemberOne", tmp);
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		sqlSession.close();
	}

%> 


	<p><%= memberList.get(0).toString() %></p>

</body>
</html>