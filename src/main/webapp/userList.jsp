<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: 17497
  Date: 2021/4/12
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1>User List</h1>
<table border=1>
    <tr>
        <td>ID</td><td>username</td><td>password</td><td>Email</td><td>Gender</td><td>Birthdate</td>
    </tr>
    <%
        ResultSet rs = (ResultSet) request.getAttribute("rsname");
        if(rs==null){
    %>
    <tr>
        <td>NO DATA!!!</td>
    </tr>
   <%} else {
       while (rs.next()) {
           int id = rs.getInt("id");
           String username1 = rs.getString("username");
           String password1 = rs.getString("password");
           String email = rs.getString("email");
           String gender = rs.getString("gender");
           String birthdate = rs.getString("birthdate");
           out.println("<tr><td>" + id + "</td><td>" + username1 + "</td><td>" + password1 + "</td><td>" + email + "</td><td>" + gender + "</td><td>" + birthdate + "</td></tr>");
       }
   }
    %>
</table>
<%@include file="footer.jsp"%>
