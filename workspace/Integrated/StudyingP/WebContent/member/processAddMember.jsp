<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%
	request.setCharacterEncoding("UTF-8");

	String code = request.getParameter("mem_code");
	String id = request.getParameter("mem_id");
	String pw = request.getParameter("mem_pw");
	String name = request.getParameter("mem_name");
	String phone = request.getParameter("mem_phone");
	String email = request.getParameter("mem_email");
	String access = request.getParameter("mem_access");
	String date = request.getParameter("mem_date");
	String status = request.getParameter("mem_status");

	Date currentDatetime = new Date(System.currentTimeMillis());
	java.sql.Date sqlDate = new java.sql.Date(currentDatetime.getTime());
	java.sql.Timestamp timestamp = new java.sql.Timestamp(currentDatetime.getTime());
%>

<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/StudyingPDB?useSSL=false"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:update dataSource="${dataSource}" var="resultSet">
   INSERT INTO member VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
   <sql:param value="<%=code%>" />
   <sql:param value="<%=id%>" />
	<sql:param value="<%=pw%>" />
	<sql:param value="<%=name%>" />
	<sql:param value="<%=phone%>" />
	<sql:param value="<%=email%>" />
	<sql:param value="<%=access%>" />
	<sql:param value="<%=date%>" />
	<sql:param value="<%=status%>" />
</sql:update>

<c:if test="${resultSet>=1}">
	<c:redirect url="resultMember.jsp?msg=1" />
</c:if>

