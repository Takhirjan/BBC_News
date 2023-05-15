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
    <div aria-live="polite" aria-atomic="true" class="d-flex" style="margin-left: 72%;padding: 12px ">

        <!-- Then put toasts within -->
        <div class="toast fade show" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header">
                <img class="bd-placeholder-img rounded me-2" width="20" height="20"
                     src="https://upload.wikimedia.org/wikipedia/en/thumb/f/ff/BBC_News.svg/1200px-BBC_News.svg.png"></img>
                <strong class="me-auto">BBC NEWS</strong>
                <small>1 min ago</small>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body">
                Welcome back, <span><%=currentUser.getFull_name()%>!</span>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 ">
            <%
                ArrayList<News> news= (ArrayList<News>) request.getAttribute("news");
                if(news!=null){
                    for(News n: news){

            %>
            <div class="col">
                <div class="card shadow-lg">
                    <h1 class="p-2" style="font-size:22px "><%=n.getTitle()%></h1>
                    <hr>
                    <div class="card-body">
                        <p class="card-text"><%=n.getContent()%></p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <button type="button" class="btn btn-sm btn-outline-success">View</button>
                                <%
                                    if(currentUser!=null){
                                %>
                                <button type="button" class="btn btn-sm btn-outline-primary">Edit</button>
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
