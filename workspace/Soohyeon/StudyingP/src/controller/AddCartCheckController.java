package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddCartCheckController
 */
@WebServlet("/AddCartCheck")
public class AddCartCheckController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String clsCode = request.getParameter("cls_code");
		String memCode = request.getParameter("mem_code");
		System.out.println(clsCode);
		System.out.println(memCode);
		
		HttpSession session = request.getSession();
		session.setAttribute("AddedClsCode", clsCode);
		session.setAttribute("AddedMemCode", memCode);
		
		// view 페이지로 응답
		response.sendRedirect("addcartok.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
