package Servlets;

import DB.DBconnection;
import Models.Users;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
//I have made an update servlet, where u can update ur personal data. Full name and password
//After the update you don't have an ability to return to the homepage by your old personal data
//It automatically  redirects you to the logOut


@WebServlet(value = "/edit")
public class EditProfileServlet extends HttpServlet {
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    Users users= (Users) req.getSession().getAttribute("currentUser");
    if(users!=null){
    String email=req.getParameter("email");
    String full_name=req.getParameter("full_name");
    String password=req.getParameter("password");


    Users newUser = DBconnection.getUser(email);
    if(newUser!=null){
    newUser.setEmail(email);
    newUser.setFull_name(full_name);
    newUser.setPassword(password);
    DBconnection.updateUser(newUser);

    resp.sendRedirect("/logout");
    }
    }else{
      resp.sendRedirect("/login");
    }
  }
}
