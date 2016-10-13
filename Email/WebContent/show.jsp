<%@page import="java.util.List"%>
<%@page import="com.yeon.email.EmailVo"%>
<%@page import="com.yeon.email.EmailDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	EmailDao dao = new EmailDao();
	List<EmailVo> list = dao.getList();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메일 리스트에 가입되었습니다.</h1>
	<p>입력한 정보 내역입니다.</p>
	
	<!-- 메일정보 리스트 --> <!-- 브라우저 까지는 가는 주석 -->
	<%-- list에서 하나씩 빼서 테이블를 채운다--%> <%--tomcat이 jsp 주석으로 브라우저까지 보내지 않음. --%>
	<% for(EmailVo evo : list){ %>
	<table border="1" cellpadding="5" cellspacing="2">
		<tr>
			<td align=right>First name: </td>
			<td><%= evo.getFirstName()%></td>
		</tr>
		<tr>
			<td align=right width="110">Last name: </td>
			<td width="110"><%=evo.getLastName() %></td>
		</tr>
		<tr>
			<td align=right>Email address: </td>
			<td><%=evo.getEmail() %></td>
		</tr>
	</table>
	<br>
	<%} %>
	<p>
		추가메일 등록
	</p>
	<br>
</body>
</html>