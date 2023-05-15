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
<div class="text-center" style="display: flex">
    <main class="form-signin w-100" style="margin-left: 12%; margin-top: -5%">
        <form action="/register" method="post">
        <img class="" src="bbc_news_logo-removebg-preview.png"
            style="width: 90%">
                <h1 class="h3 mb-3 text-light" style="font-family: 'Book Antiqua';font-weight: bolder">WELCOME TO THE BBC NEWS!</h1>
                <div class="form-floating" style="width: 130%;margin-left: -10%">
                    <input type="email" class="form-control" name="email" id="floatingInput"
                           placeholder="name@example.com">
                    <label for="floatingInput">Email address</label>
                </div>
            <div class="form-floating" style="width: 130%;margin-left: -10% ">
                <input type="text" name="full_name" class="form-control" id="floatingText"
                       placeholder="Insert your Full Name">
                <label for="floatingPassword">Full Name</label>
            </div>
                <div class="form-floating" style="width: 130%;margin-left: -10%; margin-bottom: -10px  ">
                    <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password">
                    <label for="floatingPassword">Password</label>
                </div>
            <div class="form-floating" style="width: 130%;margin-left: -10%;">
                <input type="password" name="re_password" class="form-control" id="floatingRe_Password" placeholder="Password">
                <label for="floatingPassword">Repeat Password</label>
            </div>


                <button class="btn btn-lg btn-primary"
                        style="width: 130%;margin-left: -10%">Sign in</button>
                    <hr style="background-color:white;height:2px">
                <p style="color: white;font-weight: bolder;font-size:20px">Already have an account?</p>
            <a href="/login"> <p class="mt-2 mb-3 text-info">Sign in now</p></a>
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
