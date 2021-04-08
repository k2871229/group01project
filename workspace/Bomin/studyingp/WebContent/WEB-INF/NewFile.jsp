<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="Config.SqlSessionManager" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactory" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.MemberDTO" %>


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

//		member = sqlSession.update("sqlMap.mapper.MemberMapper.deleteMem", member);
		sqlSession.commit();
		System.out.println(member);
		memberList = sqlSession.selectList("sqlMap.mapper.MemberMapper.selectMemAll");
		System.out.println(memberList);
		
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		sqlSession.close();
	}

%> 

	<p><%= memberList.toString() %></p>
</body>
</html>