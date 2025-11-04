package Model;

import java.util.Date;

public class pendaftar {
    private String nik;
    private String nama;
    private String alamat;
    private String pekerjaan;
    private double penghasilan;
    private String email;
    private String noHp;
    private Date tanggalDaftar;
    private String password;
    private String statusVerifikasi;

    public pendaftar(String nik, String nama, String alamat, String pekerjaan,
                     double penghasilan, String email, String noHp, Date tanggalDaftar,
                     String password, String statusVerifikasi) {
        this.nik = nik;
        this.nama = nama;
        this.alamat = alamat;
        this.pekerjaan = pekerjaan;
        this.penghasilan = penghasilan;
        this.email = email;
        this.noHp = noHp;
        this.tanggalDaftar = tanggalDaftar;
        this.password = password;
        this.statusVerifikasi = statusVerifikasi;
    }

    public pendaftar() {}

    public String getNik() { return nik; }
    public void setNik(String nik) { this.nik = nik; }

    public String getNama() { return nama; }
    public void setNama(String nama) { this.nama = nama; }

    public String getAlamat() { return alamat; }
    public void setAlamat(String alamat) { this.alamat = alamat; }

    public String getPekerjaan() { return pekerjaan; }
    public void setPekerjaan(String pekerjaan) { this.pekerjaan = pekerjaan; }

    public double getPenghasilan() { return penghasilan; }
    public void setPenghasilan(double penghasilan) { this.penghasilan = penghasilan; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getNoHp() { return noHp; }
    public void setNoHp(String noHp) { this.noHp = noHp; }

    public Date getTanggalDaftar() { return tanggalDaftar; }
    public void setTanggalDaftar(Date tanggalDaftar) { this.tanggalDaftar = tanggalDaftar; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getStatusVerifikasi() { return statusVerifikasi; }
    public void setStatusVerifikasi(String statusVerifikasi) { this.statusVerifikasi = statusVerifikasi; }
}
