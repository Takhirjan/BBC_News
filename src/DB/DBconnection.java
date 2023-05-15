package DB;

import Models.Users;
import com.mysql.cj.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBconnection {
  private static Connection connection;
  static{
    try{
      Class.forName("com.mysql.cj.jdbc.Driver");
      connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/bbc_news",
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
//        user.setRole(resultSet.getInt("role_id"));

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
}
