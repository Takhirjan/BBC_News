package Servlets;

import DB.DBconnection;
import Models.News;
import Models.Users;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;

@WebServlet(value = "/save-news")
public class SaveNewsServlet extends HttpServlet {
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    Users user= (Users) request.getSession().getAttribute("currentUser");
    if(user!=null) {
    Long id = Long.parseLong(request.getParameter("news_id"));
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    News news = DBconnection.getNewsById(id);
    if (news != null) {
      news.setTitle(title);
      news.setContent(content);
      DBconnection.updateNews(news);
//      response.sendRedirect("/details?book_id=" + id);
      response.sendRedirect("/profile");

    }
    }else{
      response.sendRedirect("/login");
    }
  }
}