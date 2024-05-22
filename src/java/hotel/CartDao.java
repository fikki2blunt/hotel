/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hotel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author FIKKI
 */
public class CartDao {
    public List<CartBean> cart(){
         String url = "jdbc:mysql://localhost:3306/hotel";
        String user = "root";
        String password = "fade_234";
        
        List <CartBean> cart = new ArrayList();
        
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        
            Connection con = DriverManager.getConnection(url, user, password);
            System.out.println("Connect Succeeded");
            
            String query = "SELECT * FROM Cart;";
            Statement stmt = con.createStatement();
            
            ResultSet rs = stmt.executeQuery(query);
            
            while(rs.next()){
                CartBean cb = new CartBean();
                cb.setRID(rs.getInt("RID"));
                cb.setBedType(rs.getString("BedType"));
                cb.setQuantity(rs.getInt("Quantity"));
                cart.add(cb);
            }
           
            
           
        } catch (Exception e) {
        }
        return cart;
    }
    
}
