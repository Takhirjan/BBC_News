package DB;

import Models.News;
import Models.Users;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBconnection {
  private static Connection connection;
  static{
    try{
      Class.forName("com.mysql.cj.jdbc.Driver");
      connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/news",
          "root","");
    }catch (Exception e){
      e.printStackTrace();
    }
  }
  public static Users getUser(String email){
    Users user=null;
    try{
      PreparedStatement statement= connection.prepareStatement(""+
          "select *from users where email=?");
      statement.setString(1,email);
      ResultSet resultSet=statement.executeQuery();
      if(resultSet.next()){
        user=new Users();
        user.setId(resultSet.getLong("id"));
        user.setFull_name(resultSet.getString("full_name"));
        user.setPassword(resultSet.getString("password"));
        user.setEmail(resultSet.getString("email"));
        user.setRole_id(resultSet.getInt("role_id"));

      }
      statement.close();
    }catch (Exception e){
      e.printStackTrace();
    }
    return user;
  }
  public static void addUser(Users users){
    try{
        PreparedStatement statement= connection.prepareStatement(""+
            "INSERT INTO users(email,full_name,password)"+
            "VALUES (?,?,?)");
        statement.setString(1,users.getEmail());
        statement.setString(2,users.getFull_name());
        statement.setString(3,users.getPassword());

        statement.executeUpdate();
        statement.close();

      }catch(Exception e){
      e.printStackTrace();
    }
  }
  public static ArrayList<News> getNews(){
    ArrayList<News> news=new ArrayList<>();
    try{
      PreparedStatement statement= connection.prepareStatement("" +
          "select n.id, n.title,n.content,n.post_date " +
          "from news as n "+
          "order by n.post_date desc");

      ResultSet resultSet=statement.executeQuery();
      while(resultSet.next()){
        News n=new News();
        n.setId(resultSet.getLong("id"));
        n.setTitle(resultSet.getString("title"));
        n.setContent(resultSet.getString("content"));
        n.setPostdate(resultSet.getTimestamp("post_date"));

        news.add(n);
      }
      statement.close();
    }catch (Exception e){
      e.printStackTrace();
    }
    return news;
  }
  public static void addNews(News news){
  try{
    PreparedStatement statement= connection.prepareStatement("" +
        "insert into news(title,content,post_date)"+
        "VALUES (?,?,NOW())");
    statement.setString(1,news.getTitle());
    statement.setString(2,news.getContent());
//    statement.setLong(3,news.getUser().getId());
    statement.executeUpdate();
    statement.close();

  }catch (Exception e){
    e.printStackTrace();
  }
  }

  public static News getNewsById(Long id) {
    News news=null;
    try{
      PreparedStatement statement= connection.prepareStatement(""+
    "select n.id,n.title,n.content,n.post_date "+
    "from news as n "+
    "where n.id=? ");
    statement.setLong(1,id);
    ResultSet resultSet=statement.executeQuery();
    if(resultSet.next()){
    news=new News();
    news.setId(resultSet.getLong("id"));
    news.setTitle(resultSet.getString("title"));
    news.setContent(resultSet.getString("content"));
    news.setPostdate(resultSet.getTimestamp("post_date"));
    }
    statement.close();
    }catch (Exception e){
      e.printStackTrace();
    }
    return news;
  }
  public static void updateUser(Users users){
        try{
          PreparedStatement statement=connection.prepareStatement("" +
              "update users "+
              "set "+
              "email = ?,"+
              "password =?,"+
              "full_name=? "+
              "where id=?");

          statement.setString(1, users.getEmail());
          statement.setString(2,users.getPassword());
          statement.setString(3,users.getFull_name());
          statement.setLong(4,users.getId());

          statement.executeUpdate();
          statement.close();

        }catch (Exception e){
          e.printStackTrace();
        }
  }
}
