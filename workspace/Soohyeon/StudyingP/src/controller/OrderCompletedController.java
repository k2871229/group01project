package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ClassDAOImpl;
import dao.MemberDAOImpl;
import dao.OrderDAOImpl;
import dto.ClassDTO;
import dto.MemberDTO;
import dto.OrderDTO;


@WebServlet("/OrderCompleted")
public class OrderCompletedController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ClassDAOImpl clsDao = new ClassDAOImpl();
		MemberDAOImpl memDao = new MemberDAOImpl();
		OrderDAOImpl ordDao = new OrderDAOImpl();
		ClassDTO clsDto = new ClassDTO();
		MemberDTO memDto = new MemberDTO();
		OrderDTO ordDto = new OrderDTO();
		
		// 세션에 들어있는 강의번호, 회원번호 받아오기
		HttpSession session = req.getSession();
		int clsCode = Integer.valueOf((String)session.getAttribute("AddedClsCode"));
		int memCode = Integer.valueOf((String)session.getAttribute("AddedMemCode"));
		clsDto.setCls_code(clsCode);
		memDto.setMem_code(memCode);
		
		
		// 강의번호, 회원번호를 이용해 db로부터 데이터를 받아옴
		try {
			clsDto = clsDao.selectClassOne(clsDto);
			memDto = memDao.selectMemberOne(memDto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// db에서 받아온 값을 ORDERTBL에 넣을 임시 변수 ordDto에 할당
		ordDto.setCls_code(clsDto.getCls_code());
		ordDto.setMem_code(memDto.getMem_code());
		ordDto.setOrd_total(clsDto.getCls_price());
		
		// 임시 변수 ordDto를 이용해 ORDERTBL에 INSERT
		try {
			int result = ordDao.insertOrder(ordDto);
			
			// 정상적으로 실행되었는지 확인
			System.out.println(result);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
				
		RequestDispatcher rd = req.getRequestDispatcher("./ordercompleted.jsp");
		rd.forward(req, resp);
	}

}
