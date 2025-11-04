package Model;

import java.sql.Date;

public class pelatihan {
    private String id;
    private String nama;
    private String deskripsi;
    private Date tanggalMulai;
    private Date tanggalSelesai;
    private String statusProgram;

    public pelatihan(String id, String nama, String deskripsi, Date tanggalMulai, Date tanggalSelesai, String statusProgram) {
        this.id = id;
        this.nama = nama;
        this.deskripsi = deskripsi;
        this.tanggalMulai = tanggalMulai;
        this.tanggalSelesai = tanggalSelesai;
        this.statusProgram = statusProgram;
    }

    public pelatihan() {}

    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    public String getNama() { return nama; }
    public void setNama(String nama) { this.nama = nama; }

    public String getDeskripsi() { return deskripsi; }
    public void setDeskripsi(String deskripsi) { this.deskripsi = deskripsi; }

    public Date getTanggalMulai() { return tanggalMulai; }
    public void setTanggalMulai(Date tanggalMulai) { this.tanggalMulai = tanggalMulai; }
    
    public Date getTanggalSelesai() { return tanggalSelesai; }
    public void setTanggalSelesai(Date tanggalSelesai) { this.tanggalSelesai = tanggalSelesai; }

    public String getStatusProgram() { return statusProgram; }
    public void setStatusProgram(String statusProgram) { this.statusProgram = statusProgram; }

    @Override
    public String toString() {
        return nama + " (" + statusProgram + ")";
    }
}
