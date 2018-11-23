package webCrawling;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.Dao;
import db.Dto;

@WebServlet("*.do")
 public class Controller 
 	extends javax.servlet.http.HttpServlet 
 	implements javax.servlet.Servlet {
	 protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
	 	throws ServletException, IOException {
		 String RequestURI=request.getRequestURI();
		 String contextPath=request.getContextPath();
		 String command=RequestURI.substring(contextPath.length());
		 ActionForward forward=null;
		 Action action=null;
		   
		   if(command.equals("/login.do")){
			   forward=new ActionForward();
			   forward.setRedirect(false);
			   forward.setPath("./login.jsp");
		   }else if(command.equals("/join.do")){
			   System.out.println("1");
			   forward=new ActionForward();
			   forward.setRedirect(false);
			   System.out.println("2");
			   forward.setPath("./join.jsp");
			   System.out.println("3?"); 
		   }else if(command.equals("/joinCompleted.do")){
			   action  = new Join();
			   try {
				
				   forward=action.execute(request, response);
			   } catch (Exception e) {
				   e.printStackTrace();
			   }
				
		   }else if(command.equals("/CheckingId.do")){
			   action  = new CheckingId();
			   try {
				   
				   forward=action.execute(request, response);
				   System.out.println("��������� �´�");
			   } catch (Exception e) {
				   e.printStackTrace();
			   }
				
		   }
		   
		   if(forward.isRedirect()){
			   System.out.println(forward.getPath());
			   response.sendRedirect(forward.getPath());
		   }else{
			   RequestDispatcher dispatcher=
				   request.getRequestDispatcher(forward.getPath());
			   
			   dispatcher.forward(request, response);
		   }
	 }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		doProcess(request,response);
	}  	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		doProcess(request,response);
	}   	  	    
}