package Servlets;

import Models.Users;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet(value = "/add-news-page")
public class AddNewsServlet extends HttpServlet {
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

  }

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    Users users = (Users) req.getSession().getAttribute("currentUser");
    if (users != null) {
      req.getRequestDispatcher("/addform.jsp").forward(req, resp);
    }else{
      resp.sendRedirect("/login");
    }
  }
}
