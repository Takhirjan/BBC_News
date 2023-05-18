package Servlets;

import DB.DBconnection;
import Models.News;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/details")
public class DetailsServlet extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    Long id=Long.parseLong(req.getParameter("id"));
    News news = DBconnection.getNews(id);
    req.setAttribute("news_n",news);
    req.getRequestDispatcher("/details.jsp").forward(req,resp);
  }
}
