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
<div class="container mt-5">

    <%
        News news= (News) request.getAttribute("news");
        if(news!=null){
    %>
    <input type="hidden" name="news_id" value="<%=news.getId()%>">
        <div class="row">
            <div class="col-6 mx-auto">
                <div class="row">
                    <div class="col-12">
                        <label>Title : </label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" readonly value="<%=news.getTitle()%>">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>Content:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" readonly value="<%=news.getContent()%>" >
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-12">
                        <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editBook">
                            Edit Book
                        </button>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-danger btn-sm ms-2" data-bs-toggle="modal" data-bs-target="#deleteBook">
                            Delete Book
                        </button>
                    </div>
                </div>
            </div>

<%--        <%--%>
<%--        }else{--%>
<%--        %>--%>
<%--        <img class="w-100" src="https://labrika.ru/static/upload/03/56/03569c9d99f17582dd6ae082a913fc9b.png" alt="404">--%>
        <%
        }
        %>
</div>
</body>
</html>
