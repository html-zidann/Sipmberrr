package Model;

public class staff {
    private String idStaff;
    private String nama;
    private String email;
    private String noHp;
    private String password;
    private String jenisStaff;

    public staff(String idStaff, String nama, String email, String noHp, String password, String jenisStaff) {
        this.idStaff = idStaff;
        this.nama = nama;
        this.email = email;
        this.noHp = noHp;
        this.password = password;
        this.jenisStaff = jenisStaff;
    }

    public String getIdStaff() { return idStaff; }
    public void setIdStaff(String idStaff) { this.idStaff = idStaff; }

    public String getNama() { return nama; }
    public void setNama(String nama) { this.nama = nama; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getNoHp() { return noHp; }
    public void setNoHp(String noHp) { this.noHp = noHp; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getJenisStaff() { return jenisStaff; }
    public void setJenisStaff(String jenisStaff) { this.jenisStaff = jenisStaff; }

    @Override
    public String toString() {
        return nama + " (" + jenisStaff + ")";
    }
 
}
