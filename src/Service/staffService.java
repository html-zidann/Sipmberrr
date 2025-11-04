package Service;

import Model.*;
import util.koneksi;
import java.sql.*;
import java.util.*;

public class staffService {

    public List<staff> getAllStaff() {
        List<staff> daftar = new ArrayList<>();
        try (Connection conn = koneksi.getConnection()) {
            String sql = "SELECT * FROM staff";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);

            while (rs.next()) {
                String jenis = rs.getString("jenis_staff");
                staff s;
                if ("Admin".equalsIgnoreCase(jenis)) {
                    s = new admin(rs.getString("id_staff"),
                                  rs.getString("nama"),
                                  rs.getString("email"),
                                  rs.getString("no_hp"),
                                  rs.getString("password"));
                } else {
                    s = new staffPelatihan(rs.getString("id_staff"),
                                            rs.getString("nama"),
                                            rs.getString("email"),
                                            rs.getString("no_hp"),
                                            rs.getString("password"));
                }
                daftar.add(s);
            }
        } catch (SQLException e) {
        }
        return daftar;
    }
}
