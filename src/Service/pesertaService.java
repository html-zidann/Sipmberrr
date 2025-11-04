package Service;

import Model.peserta;
import util.koneksi;
import java.sql.*;
import java.util.*;

public class pesertaService {

    public List<peserta> getAllPeserta() {
        List<peserta> daftar = new ArrayList<>();
        try (Connection conn = koneksi.getConnection()) {
            String sql = "SELECT p.id_peserta, p.nik, d.nama, p.progress, p.id_pelatihan " +
                         "FROM peserta p " +
                         "JOIN pendaftar d ON p.nik = d.nik " +
                         "WHERE d.status_verifikasi = 'Diterima'"; // ✅ hanya ambil yang diterima

            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);

            while (rs.next()) {
                peserta pes = new peserta(
                    rs.getString("id_peserta"),
                    rs.getString("nik"),
                    rs.getString("nama"),
                    rs.getString("id_pelatihan"),
                    rs.getString("progress")
                );
                daftar.add(pes);
            }
        } catch (SQLException e) {
            System.out.println("Error getAllPeserta: " + e.getMessage());
        }
        return daftar;
    }

}
