<%@ page import="Models.News" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 17.05.2023
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
</head>
<%@include file="head.jsp"%>
<body>
<%@include file="navbar.jsp"%>

<%
    News news= (News) request.getAttribute("news_n");
    if(news!=null){
%>
<div class="row">
    <div class="col-6 mx-auto">
        <div class="row">
            <div class="col-12">
                <label>NAME : </label>
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-12">
                <input type="text" class="form-control" readonly value="<%=news.getTitle()%>">
            </div>
        </div>
    </div>


<%
    }
%>
</body>
</html>
