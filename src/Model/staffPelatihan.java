package Model;

public class staffPelatihan extends staff implements roleStaff {

    public staffPelatihan(String idStaff, String nama, String email, String noHp, String password) {
        super(idStaff, nama, email, noHp, password, "StaffPelatihan");
    }

    @Override
    public void tugasUtama() {
        System.out.println("Selamat datang Staff Pelatihan " + getNama());
    }
    
}
