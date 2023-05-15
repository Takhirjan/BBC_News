<%--
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

<div aria-live="polite" aria-atomic="true" class="d-flex" style="position: relative;margin-left: 72%;
margin-top: 28%">

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

</body>
</html>
