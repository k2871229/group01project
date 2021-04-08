<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="Config.SqlSessionManager" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactory" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.MemberDTO" %>
<%@ page import="dto.BoardDTO" %>
<%@ page import="dto.ClassDTO" %>
<%@ page import="dto.OrderDTO" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<%!

	List<MemberDTO> memberList = null;
	MemberDTO member = new MemberDTO();
	

%>

<%	
	member.setMem_code(1);
	

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	try{
		
		memberList = sqlSession.selectList("sqlMap.mapper.MemberMapper.selectMemberAll");
		member = sqlSession.selectOne("sqlMap.mapper.MemberMapper.selectMemberCode", member);
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		sqlSession.close();
	}

%> 

	<p><%= memberList.get(0).toString() %></p>
	<p><%= member.toString() %></p>

</body>
</html>