<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="javax.naming.*" %>


<html>
<head>
<meta charset="EUC-KR">
<title>��ܸ��</title>
</head>
<body>

<%
	boolean confirmIds = false;
		confirmIds= (boolean)request.getAttribute("confirmIds");
		
		System.out.println(confirmIds);
%>
     
        <%if(confirmIds==true){ %>
    	  <h2 style="position: fixed; top:30%; left:35%">��밡��</h2>
        <%}else{%>
          <h2 style="position: fixed; top:30%; left:20%">���̵� �ߺ��ʤ�</h2>
        <%}%>

     
</body>
</html>

