package Servlets;

import DB.DBconnection;
import Models.Users;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/register")
public class RegisterServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    req.getRequestDispatcher("/register.jsp").forward(req,resp);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String email=req.getParameter("email");
    String password=req.getParameter("password");
    String re_password=req.getParameter("re_password");
    String fullName = req.getParameter("full_name");

    Users user = DBconnection.getUser(email);

    if(user==null){
      if(password.equals(re_password)){
        Users newUser=new Users();
        newUser.setFull_name(fullName);
        newUser.setEmail(email);
        newUser.setPassword(password);
        newUser.setRole_id((2));

        DBconnection.addUser(newUser);
        resp.sendRedirect("/register?success");
      }else{
        resp.sendRedirect("/register?passworderror");
      }
    }else{
      resp.sendRedirect("/register?emailerror");
    }

  }
}
