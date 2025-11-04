package Model;

public class peserta extends pendaftar {
    private String idPeserta;
    private String nik;
    private String nama;
    private String idPelatihan;
    private String progress;

    public peserta(String idPeserta, String nik, String nama, String idPelatihan, String progress) {
        this.idPeserta = idPeserta;
        this.nik = nik;
        this.nama = nama;
        this.idPelatihan = idPelatihan;
        this.progress = progress;
    }

    public peserta() {}

    public String getIdPeserta() { return idPeserta; }
    public void setIdPeserta(String idPeserta) { this.idPeserta = idPeserta; }

    @Override
    public String getNik() { return nik; }
    @Override
    public void setNik(String nik) { this.nik = nik; }
    @Override
    public String getNama() { return nama; }
    @Override
    public void setNama(String nama) { this.nama = nama; }

    public String getIdPelatihan() { return idPelatihan; }
    public void setIdPelatihan(String idPelatihan) { this.idPelatihan = idPelatihan; }

    public String getProgress() { return progress; }
    public void setProgress(String progress) { this.progress = progress; }
}
