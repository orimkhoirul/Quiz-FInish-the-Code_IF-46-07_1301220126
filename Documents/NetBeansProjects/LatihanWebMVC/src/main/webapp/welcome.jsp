<%-- 
    Document   : welcome
    Created on : 26 Nov 2024, 11.03.33
    Author     : helmy
--%>

<%@page import="com.mycompany.latihanwebmvc.Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
    <title>Welcome Page</title>
</head>
<% User user = (User) request.getSession().getAttribute("user");  
   
%>
<body>
    <h2>Selamat datang, ${user.getUsername()}! anda berhasil Login!</h2>  <!-- Menampilkan nama pengguna yang login -->
    <form action="userList" method="get">
        <button type="submit">Tampilkan User</button>
    </form>
    <!-- Tombol untuk logout -->
    <form action="logout" method="get">
        <button type="submit">Logout</button>
    </form>
</body>
</html>
