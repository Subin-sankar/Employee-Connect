<%--
Document
: CATEGORY ACTION
Created on : 01.11.2023
Author: subin
--%>
<%@ page import="com.employeeconnect.dao.RegistrationDAO" %>
<%@page import="com.employeeconnect.beans.RegistrationBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String email = request.getParameter("email");
    String contact = request.getParameter("contact");
    String department = request.getParameter("department");
    String position = request.getParameter("position");

    boolean flag = RegistrationDAO.insertRegistration(firstName, lastName, email, contact, department, position);

    // Use the Post/Redirect/Get (PRG) pattern
    if (flag) {
        response.sendRedirect("employee-registration.html");
    } else {
        response.sendRedirect("index.html");
    }
%>
