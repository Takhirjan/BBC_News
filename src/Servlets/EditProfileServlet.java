package Servlets;

import DB.DBconnection;
import Models.Users;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/edit")
public class EditProfileServlet extends HttpServlet {
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    Users users= (Users) req.getSession().getAttribute("currentUser");
    if(users!=null){
    String email=req.getParameter("email");
    String full_name=req.getParameter("full_name");
    String password=req.getParameter("password");
    String re_password=req.getParameter("re_password");

    Users newUser = DBconnection.getUser(email);
    if(newUser!=null){
    newUser.setEmail(email);
    newUser.setFull_name(full_name);
    newUser.setPassword(password);
    newUser.setPassword(re_password);
    DBconnection.updateUser(newUser);

    resp.sendRedirect("/profile");
    }
    }else{
      resp.sendRedirect("/login");
    }
  }
}
