/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.SQLException;
import java.sql.ResultSet;

class LoginDao {
    int result;
    String role;
    
    public LoginDao() {
        
    }
    public int validator(String cuser, String cpass){
        
        String url ="jdbc:mysql://localhost:3306/hotel";
        String user = "root";
        String password = "fade_234";
        
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        
            Connection con = DriverManager.getConnection(url, user, password);
            System.out.println("Connect Succeeded");
            
            String query = "SELECT * FROM users WHERE username = '"+cuser+"' AND password = '"+cpass+"'";
            Statement stmt = con.createStatement();
            
            ResultSet rs = stmt.executeQuery(query);
            
            while(rs.next()){
                System.out.println(rs.getString("role"));
                role = rs.getString("role");
            }
            
            if (role==null){
                return 2;
            }
            else if (role.equalsIgnoreCase("admin")){
                return 1;
            }
            else{
                return 0;
            }
            
            
            
        }catch  (ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        return result;
    }
    public static void main(String[] args) {
        LoginDao ld = new LoginDao();
        System.out.println (ld.validator("fikky", "fikky123"));
    }
}
