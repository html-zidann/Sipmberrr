package Model;

import java.sql.Date;

public class sertifikat {
    private String noSertif;
    private double skorPelatihan;
    private Date tanggalTerbit;
    private String idPeserta; 

    public sertifikat(String noSertif, double skorPelatihan, Date tanggalTerbit, String idPeserta) {
        this.noSertif = noSertif;
        this.skorPelatihan = skorPelatihan;
        this.tanggalTerbit = tanggalTerbit;
        this.idPeserta = idPeserta;
    }

    public String getNoSertif() { return noSertif; }
    public void setNoSertif(String noSertif) { this.noSertif = noSertif; }

    public double getSkorPelatihan() { return skorPelatihan; }
    public void setSkorPelatihan(double skorPelatihan) { this.skorPelatihan = skorPelatihan; }

    public Date getTanggalTerbit() { return tanggalTerbit; }
    public void setTanggalTerbit(Date tanggalTerbit) { this.tanggalTerbit = tanggalTerbit; }

    public String getIdPeserta() { return idPeserta; }
    public void setIdPeserta(String idPeserta) { this.idPeserta = idPeserta; }

    @Override
    public String toString() {
        return "Sertifikat: " + noSertif + " | Peserta: " + idPeserta;
    }
}
