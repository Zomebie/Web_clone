package frontController;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command_order;
import etc.Command;


	//@WebServlet("/FrontController_order")
	// *.do�� ���εǾ� �ִ� ��Ʈ�ѷ�
public class FrontController_order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public FrontController_order() {
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		try {
			process(request,response);
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		try {
			process(request,response);
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NamingException {
		System.out.println("doProcess");
		request.setCharacterEncoding("utf-8");
		
		String forward=null;
		Command command=null;
		
		String uri = request.getRequestURI(); 
		String contextPath = request.getContextPath(); 
		String com = uri.substring(contextPath.length());
		
		System.out.println("command is "+com);
		
		// ȸ���� �ֹ� ����
		if(com.equals("/order2.or")) {
		
			command = new Command_order();
			
			command.exe(request,response);
			forward = "/menu/order_list.jsp";
					
		}else if(com.equals("/order1.or")) {
			
			forward="/menu/menu_list.jsp";
		}
		
		//request��ü ������ ���� forwarding ����� ������ �̵�
		RequestDispatcher dis = request.getRequestDispatcher(forward);
		dis.forward(request, response);
		
	}
	
	
	
}

