<%@ page import="Models.Users" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 14.05.2023
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Users currentUser= (Users) session.getAttribute("currentUser");

%>
<header class="p-3 text-bg-dark bg-dark">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                <img  width="150" height="45" style="margin-right: 30px"
                      src="https://w7.pngwing.com/pngs/820/447/png-transparent-bbc-news-logo-others-television-text-logo.png">
            </a>

            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="#" class="nav-link px-2 text-white">Home</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Sport</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Climate</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Tech</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Science</a></li>
                <%
                    if(currentUser!=null){
                %>
                <button type="button" class="btn btn-light btn-sm"
                        data-bs-toggle="modal" data-bs-target="#addNews">Add News</button>
                <div class="modal fade" id="addNews" data-bs-backdrop="static" data-bs-keyboard="false"
                     tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" >
                    <div class="modal-dialog modal-fullscreen-md-down">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <%@include file="addform.jsp"%>
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
            </ul>

                        <%
                            if(currentUser!=null){
                        %>
            <div class="" style="display: flex;width: 30%">
            <li class="nav-item dropdown" >
                <a class="nav-link dropdown-toggle p-2" style="color: white;font-family: 'Bookman Old Style';
                font-size: 15px;margin-top: -10px" href="#"
                   role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <%=currentUser.getFull_name()%>
                </a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/logout"> Logout</a></li>
                </ul>
            </li>
                            <%
                                }else{
                            %>
                <a href="/login"> <button type="button" class="btn btn-outline-light me-2">Login </button></a>
            <%
                }
            %>
                <a href="/register"> <button type="button" class="btn btn-warning mt-sm-2"> Sign-up</button></a>
                    </div>
    </div>
    </div>
</header>
</body>
</html>
