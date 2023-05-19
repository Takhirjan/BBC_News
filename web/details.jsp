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
<input type="hidden" name="id" value="<%=news.getId()%>">
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
                <label>Content : </label>
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-12">
                <textarea class="form-control" readonly rows="10"><%=news.getContent()%></textarea>
            </div>
        </div>
        <%
                if  (currentUser!=null && currentUser.getRole_id()==1){
            %>
    <div class="row mt-3">
        <div class="col-12">
            <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editNews">
                Edit News
            </button>
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-danger btn-sm ms-2" data-bs-toggle="modal" data-bs-target="#deleteBook">
                Delete Book
            </button>
        </div>
    </div>
        <div class="modal fade" id="editNews" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
             aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header bg-danger">
                        <h1 class="modal-title fst-italic text-light" style="font-size: 25px"
                            id="staticBackdropLabel">Edit News</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="/save-book" method="post">
                            <input type="hidden" name="book_id" value="<%=news.getId()%>">
                            <div class="row">
                                <div class="col-12">
                                    <label>Title : </label>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-12">
                                    <input type="text" class="form-control" name="title" value="<%=news.getTitle()%>">
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-12">
                                    <label>Content : </label>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-12">
                                    <textarea name="content" class="form-control" rows="5"><%=news.getContent()%></textarea>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-12">
                                    <button class="btn btn-primary">SAVE </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>
<%
    }else{
%>
    <div><img src="https://yoast.com/app/uploads/2016/10/404_error_checking_FI.jpg"
    style="background-size: cover;background-repeat: no-repeat;width: 100%; height: 88%"></div>
    <%
        }
    %>
</body>
</html>
