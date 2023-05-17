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

@WebServlet(value = "/add-news")
public class ToAddNewsServlet extends HttpServlet {
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    Users users= (Users) req.getSession().getAttribute("currentUser");
    if(users!=null){
      String title=req.getParameter("title");
      String content=req.getParameter("content");

      News news=new News();
      news.setTitle(title);
      news.setContent(content);
//      news.setUser(user);
      DBconnection.addNews(news);
      resp.sendRedirect("/profile");
    }else{
      resp.sendRedirect("/login");
    }
  }
}
