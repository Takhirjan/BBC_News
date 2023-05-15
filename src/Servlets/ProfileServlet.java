package Servlets;

import DB.DBconnection;
import Models.News;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/profile")
public class ProfileServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    ArrayList<News> news= DBconnection.getNews();
    req.setAttribute("news", news);
    req.getRequestDispatcher("/profile.jsp").forward(req,resp);
  }
}
