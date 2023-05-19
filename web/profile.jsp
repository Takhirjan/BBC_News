<%@ page import="Models.News" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="DB.DBconnection" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 14.05.2023
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="album py-5 bg-body-tertiary">
    <div class="container">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 ">
            <%
                ArrayList<News> news= (ArrayList<News>) request.getAttribute("news");
                if(news!=null){
                    for(News n: news){
            %>
            <div class="col">
                <div class="card shadow-lg">
                    <h1 class="p-2" style="font-size:22px;"><%=n.getTitle()%></h1>
                    <hr>
                    <div class="card-body">
                        <p class="card-text"><%=n.getContent()%></p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <a class="btn btn-success btn-sm" href="/details?news_id=<%=n.getId()%>">View</a>
                                <%
                                    if(currentUser!=null && currentUser.getRole_id()==1){
                                %>
                                    <button type="button" class="btn btn-sm btn-outline-primary"
                                            data-bs-toggle="modal" data-bs-target="#editNews">Edit</button>
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
                                <form action="/save-news" method="post">
                                    <input type="hidden" name="news_id" value="<%=n.getId()%>">
                                    <div class="row">
                                        <div class="col-12">
                                            <label>Title : </label>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <input type="text" class="form-control" name="title" value="<%=n.getTitle()%>">
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>Content : </label>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <textarea name="content" class="form-control" rows="5"><%=n.getContent()%>
                                            </textarea>
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
                            <small class="text-body-secondary"><%=n.getPostdate()%></small>
                        </div>
                    </div>
                </div>
            </div>
            <%
                    }
                }
            %>
        </div>
    </div>
</div>
</main>
</body>
</html>
