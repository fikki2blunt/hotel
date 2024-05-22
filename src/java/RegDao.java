
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author FIKKI
 */
public class RegDao {

    public static int save(RegBean reg) {

        String url = "jdbc:mysql://localhost:3306/hotel";
        String user = "root";
        String password = "fade_234";
        
        
        int status = 0;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(url, user, password);
            System.out.println("Connect Succeeded");
            
            String query = "insert into users(Firstname,Lastname,Email,Password,username) values (?,?,?,?,?);";
            PreparedStatement  ps = con.prepareStatement(query);
            
            ps.setString(1, reg.getFirstname());
            ps.setString(2, reg.getLastname());
            ps.setString(3, reg.getUsername());
            ps.setString(4, reg.getEmail());
            ps.setString(5, reg.getPassword());
            
             status =  ps.executeUpdate();
            
            
            
        } catch (ClassNotFoundException | SQLException e) {

        }
            return status;
            
    }
    
}
