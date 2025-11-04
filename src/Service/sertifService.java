package Service;

import Model.sertifikat;
import util.koneksi;
import java.sql.*;
import java.util.*;

public class sertifService {

    public List<sertifikat> getAllSertif() {
        List<sertifikat> daftar = new ArrayList<>();
        try (Connection conn = koneksi.getConnection()) {
            String sql = "SELECT * FROM sertifikat";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            
            while (rs.next()) {
                double skor = rs.getDouble("skor_pelatihan");
                if (rs.wasNull()) {
                    skor = 0.00; 
                }
                
                sertifikat s = new sertifikat(
                    rs.getString("nomor_sertifikat"),
                    skor,
                    rs.getDate("tanggal_terbit"),
                    rs.getString("id_peserta")
                );
                daftar.add(s);
            }
        } catch (SQLException e) {
        }
        return daftar;
    }
    
    public void updateSkorPelatihan(String noSertif, double skor) {
        String sql = "UPDATE sertifikat SET skor_pelatihan = ? WHERE nomor_sertifikat = ?";

        try (Connection conn = koneksi.getConnection(); 
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setDouble(1, skor);
            pstmt.setString(2, noSertif);

            int affectedRows = pstmt.executeUpdate();

            if (affectedRows == 0) {
                System.out.println("Update gagal: Sertifikat dengan no_sertif " + noSertif + " tidak ditemukan.");
            } else {
                System.out.println("Update berhasil untuk no_sertif " + noSertif);
            }

        } catch (SQLException e) {
        }
    }

    
}