package Servlets;

import DB.DBconnection;
import Models.Users;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/delete-news")
public class DeleteNewsServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Users user= (Users) request.getSession().getAttribute("currentUser");
        if(user!=null && user.getRole_id()==1) {
            Long id = Long.parseLong(request.getParameter("id"));
            DBconnection.deleteNews(id);

            response.sendRedirect("/profile");
        }else{
            response.sendRedirect("/login");
        }
    }
}
