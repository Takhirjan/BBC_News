<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 14.05.2023
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
    <%@include file="head.jsp"%>
</head>
<style>
    html,
    body {
        height: 100%;
    }

    body {

        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: black;
    }

    .form-signin {
        max-width: 330px;
        padding: 15px;
    }

    .form-signin .form-floating:focus-within {
        z-index: 2;
    }

    .form-signin input[type="email"] {
        margin-bottom: -1px;
        border-bottom-right-radius: 0;
        border-bottom-left-radius: 0;
    }

    .form-signin input[type="password"] {
        margin-bottom: 10px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
    }
</style>
<body>
<div class="text-center">
    <main class="form-signin w-100" style="margin-left: 37%">
        <form action="/edit" method="POST">
            <img class="" src="bbc_news_logo-removebg-preview.png"
            style="width: 90%">
                <h1 class="h3 mb-3 text-light" style="font-family: 'Book Antiqua';font-weight: bolder">Update your personal data!</h1>
                <div class="form-floating" style="width: 130%;margin-left: -10%">
                    <input type="email" class="form-control" name="email" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput">Email address</label>
                </div>

                <div class="form-floating" style="width: 130%;margin-left: -10% ">
                    <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password">
                    <label for="floatingPassword">Password</label>
                </div>

                <button class="btn btn-lg btn-primary"
                        style="width: 130%;margin-left: -10%">Update</button>
                    <hr style="background-color:white;height:2px">
            <a href="/profile"> <p class="mt-2 mb-3 text-info"> Back to the main page</p></a>
            </form>
       </main>
    </div>
</body>
</html>
