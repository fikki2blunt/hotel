package hotel;

import hotel.RoomBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author FIKKI
 */
public class RoomDAO {

    public List<RoomBean> room() {
        String url = "jdbc:mysql://localhost:3306/hotel";
        String user = "root";
        String password = "fade_234";

        List<RoomBean> room = new ArrayList();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(url, user, password);
            System.out.println("Connect Succeeded");

            String query = "SELECT * FROM rooms;";
            Statement stmt = con.createStatement();

            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                RoomBean rb = new RoomBean();
                rb.setId(rs.getInt("RID"));
                rb.setBedtype(rs.getString("Bedtype"));
                rb.setStatus(rs.getString("Status"));
                rb.setDescription(rs.getString("Description"));
                rb.setImages(rs.getString("Images"));

                room.add(rb);
            }

        } catch (Exception e) {
        }
        return room;
    }

}
