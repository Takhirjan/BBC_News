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
    <title>Sign in</title>
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
<div class="container mt-3">
    <div class="row">
        <div class="col-6 mx-auto">
            <%
                String passwordEr=request.getParameter("error");
                if(passwordEr!=null){
            %>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong> Incorrect password</strong>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <%
                }
            %>
        </div>
    </div>
</div>
<div class="text-center" style="display: flex">
    <main class="form-signin w-100" style="margin-left: 12%;">
        <form action="/login" method="post">
        <img class="" src="bbc_news_logo-removebg-preview.png"
            style="width: 90%">
                <h1 class="h3 mb-3 text-light" style="font-family: 'Book Antiqua';font-weight: bolder">Hi,There!</h1>
                <div class="form-floating" style="width: 130%;margin-left: -10%">
                    <input type="email" class="form-control" name="email" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput">Email address</label>
                </div>
                <div class="form-floating" style="width: 130%;margin-left: -10% ">
                    <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password">
                    <label for="floatingPassword">Password</label>
                </div>

                <button class="btn btn-lg btn-primary"
                        style="width: 130%;margin-left: -10%">Sign in</button>
                    <hr style="background-color:white;height:2px">
                <p style="color: white;font-weight: bolder;font-size:20px">Don't have a BBC account?</p>
            <a href="/register"> <p class="mt-2 mb-3 text-info">Register now</p></a>
            </form>
</main>
    <div class="images">
        <img style="width: 30%"
                src="https://ichef.bbci.co.uk/news/976/cpsprodpb/1793C/production/_129427569_andreasrosen-76.jpg.webp">
   <img style="width: 30%;margin-top: 80px;" src="https://ichef.bbci.co.uk/news/976/cpsprodpb/37E7/production/_129711341_gettyimages-1253631207.jpg.webp">
        <img style="width: 30%;height: 30%;margin-right: 10%;" src="https://ichef.bbci.co.uk/onesport/cps/976/cpsprodpb/1745C/production/_129642359_dida_rex.jpg">

    </div>
    </div>

</body>
</html>
