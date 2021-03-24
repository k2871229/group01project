<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%> 

<%
		Connection conn = null;

		try {
			// 변수 선언, 주소, 사용자, 비번
			String url = "jdbc:mysql://localhost:3306/studyingp?useSSL=false";
			String user = "root";
			String password = "1234";
			
			// 1. 드라이버 파일 => lib 폴더에 넣기
			// 2. 드라이버 로딩
			Class.forName("com.mysql.jdbc.Driver");
			
			// 3. 커넥션 객체(mysql서버에 접속하기 위해 주소, 사용자, 비번)
			conn = DriverManager.getConnection(url, user, password);
			out.println("데이터베이스 연결이 성공되었습니다.");
		} catch (SQLException ex) {
			out.println("데이터베이스 연결이 실패되었습니다.<br>");
			out.println("SQLException: " + ex.getMessage());
		} finally {
			if (conn != null)
				conn.close();
		}
%>