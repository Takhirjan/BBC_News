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
    int id=-1;
    try {
       id = Integer.parseInt(req.getParameter("news_id"));

    }catch (Exception e){

    }
    News news = DBconnection.getNews(id);
    req.setAttribute("news",news);
    req.getRequestDispatcher("/details.jsp").forward(req,resp);
  }
}
