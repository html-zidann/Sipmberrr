package Model;

public class admin extends staff implements roleStaff {

    public admin(String idStaff, String nama, String email, String noHp, String password) {
        super(idStaff, nama, email, noHp, password, "Admin");
    }

    @Override
    public void tugasUtama() {
        System.out.println("Selamat datang Admin " + getNama());
    }
}
