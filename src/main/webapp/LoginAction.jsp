<%@ page language="java" import="java.sql.*,java.util.*"%>
<%@ page import="com.employeeconnect.dao.UserDAO"%>
<%@page import="com.employeeconnect.beans.UserBean"%>

<%
	String userName = request.getParameter("userName");
	String passWord = request.getParameter("passWord");
	UserBean  userBean=new UserBean();
	userBean.setUserName(userName);
	userBean.setPassWord(passWord);
	
	String userType=UserDAO.checkLogin(userBean);
	 if (userType != null && userType.equals("admin")){
		response.sendRedirect("admin-home.html");
	}else if (userType != null && userType.equals("staff")) {
		response.sendRedirect("Employee-home.jsp");
	}else{
		 %>
	        <script>
	            alert("Invalid credentials. Please try again.");
	            window.location.href = "login.html"; // Redirect to login page
	        </script>
	        <%
		
	}
	
%>