<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>order_list</title>
</head>
<body>
	
<%
	String id =(String)session.getAttribute("id");
	String phone = request.getParameter("phone");
	
	String menu = null;
	int price = 0;
%>

<%
	
	// �ֹ� ���� ��������
	String[] check = request.getParameterValues("check");	// check�� �޴� ���
	String[] field = request.getParameterValues("field");	// check�� �޴����� ����
			
	// ������ intŸ������ �Ľ�
	int[] parsing = new int[field.length];
			
	for(int i =0 ; i<field.length ; i++) {
		parsing[i] = Integer.parseInt(field[i]);
	}
			
	// �� �ݾ�	
	for(int i=0;i<check.length;i++) {	
		price = price + parsing[i];
	}
			
%>


<h1><%=id%>�� �ֹ� �Ϸ� �Ǿ����ϴ�.</h3>

<h2>�ֹ� ����</h2>
<% for(int i = 0 ; i<field.length ; i++){
		out.println("<ul>");
		out.println("<li>"+check[i]+" - "+field[i]+"</li>");
		out.println("</ul>");
}%>

<h2>�� ����</h2>
<%=price %><br>




	
	
</body>
</html>