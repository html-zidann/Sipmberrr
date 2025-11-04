package Service;

import Model.pendaftar;
import util.koneksi;
import java.sql.*;
import java.util.*;

public class pendaftarService {

    public List<pendaftar> getAllPendaftar() {
        List<pendaftar> daftar = new ArrayList<>();
        try (Connection conn = koneksi.getConnection()) {
            String sql = "SELECT * FROM pendaftar WHERE status_verifikasi = 'menunggu'";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);

            while (rs.next()) {
                pendaftar p = new pendaftar(
                    rs.getString("nik"),
                    rs.getString("nama"),
                    rs.getString("alamat"),
                    rs.getString("pekerjaan"),
                    rs.getDouble("penghasilan"),
                    rs.getString("email"),
                    rs.getString("no_hp"),
                    rs.getDate("tanggal_daftar"),
                    rs.getString("password"),
                    rs.getString("status_verifikasi")
                );
                daftar.add(p);
            }
        } catch (SQLException e) {
            
        }
        return daftar;
    }
}
