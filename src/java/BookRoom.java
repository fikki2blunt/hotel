
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author FIKKI
 */
class BookRoom {

    public void addcart(int id) {
        String url = "jdbc:mysql://localhost:3306/hotel";
        String user = "root";
        String password = "fade_234";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(url, user, password);
            System.out.println("Connect Succeeded");

            String query = "INSERT INTO cart (BedType,RID,Quantity) values((select bedtype from rooms where RID =?),(select RID from rooms where RID=?), 1);";
            PreparedStatement ps = con.prepareStatement(query);
            
            ps.setInt(1, id);
            ps.setInt(2, id);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }
}
