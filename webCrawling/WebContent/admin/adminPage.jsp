<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<%	
	//String id = (String)session.getAttribute("id");

	// test
	String id = "admin";
	
	if(id.equals("admin")){
		out.println("</br>"+"<a href="+"memberList.am"+">ȸ�� ����</a><br>");

		out.println("</br>"+"<a href="+"deliver_admin.am"+">��� ����</a>");
	}
	
	else{
		out.println(session.getAttribute("id")+"���� MY PAGE"); 
	}
%>




</body>
</html>