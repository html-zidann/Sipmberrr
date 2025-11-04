package Service;

import Model.pelatihan;
import util.koneksi;
import java.sql.*;
import java.util.*;

public class pelatihanService {

    public List<pelatihan> getAllPelatihan() {
        List<pelatihan> daftar = new ArrayList<>();
        try (Connection conn = koneksi.getConnection()) {
            String sql = "SELECT * FROM pelatihan";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                pelatihan p = new pelatihan(
                    rs.getString("id_pelatihan"),
                    rs.getString("nama_pelatihan"),
                    rs.getString("deskripsi"),
                    rs.getDate("tanggal_mulai"),
                    rs.getDate("tanggal_selesai"),
                    rs.getString("status_program")
                );
                daftar.add(p);
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
        return daftar;
    }
}
