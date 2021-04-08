package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import dao.ClassDAOImpl;
//import dao.MemberDAOImpl;
import dao.OrderDAOImpl;
import dto.ClassDTO;
import dto.MemberDTO;
import dto.OrderDTO;


@WebServlet("/OrderCompleted")
public class OrderCompletedController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		ClassDAOImpl clsDao = new ClassDAOImpl();
//		MemberDAOImpl memDao = new MemberDAOImpl();
		OrderDAOImpl ordDao = new OrderDAOImpl();
		ClassDTO clsDto = new ClassDTO();
		MemberDTO memDto = new MemberDTO();
		OrderDTO ordDto = new OrderDTO();
		
		// ���ǿ� ����ִ� ���ǹ�ȣ, ȸ����ȣ �޾ƿ���
		HttpSession session = req.getSession();
		int clsCode = Integer.valueOf((String)session.getAttribute("AddedClsCode"));
		int memCode = Integer.valueOf((String)session.getAttribute("AddedMemCode"));
		clsDto.setCls_code(clsCode);
		memDto.setMem_code(memCode);
		
		
		// ���ǹ�ȣ, ȸ����ȣ�� �̿��� db�κ��� �����͸� �޾ƿ�
		try {
//			clsDto = clsDao.selectClassOne(clsDto);
//			memDto = memDao.selectMemberOne(memDto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// db���� �޾ƿ� ���� ORDERTBL�� ���� �ӽ� ���� ordDto�� �Ҵ�
		ordDto.setCls_code(clsDto.getCls_code());
		ordDto.setMem_code(memDto.getMem_code());
		ordDto.setOrd_total(clsDto.getCls_price());
		
		// �ӽ� ���� ordDto�� �̿��� ORDERTBL�� INSERT
		try {
			int result = ordDao.insertOrder(ordDto);
			
			// ���������� ����Ǿ����� Ȯ��
			System.out.println(result);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
				
		RequestDispatcher rd = req.getRequestDispatcher("./ordercompleted.jsp");
		rd.forward(req, resp);
	}

}
