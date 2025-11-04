# SIP MBER



## Anggota Kelompok
- Muhammad Sadikin Samir 2409116031
- Muhammad Fachri 2409116017
- Zidan Daffa Ramadhan 2409116056
- Ahmad Qomarul Arifin 2409116114


# Pengenalan SIP MBER
_Platform_ ini dirancang untuk menghadirkan perubahan sosial yang positif melalui teknologi digital dengan tujuan utama meningkatkan kesejahteraan masyarakat berpenghasilan rendah. SIP MBER berfokus pada akses yang mudah terhadap program bantuan, pelatihan keterampilan, dan peluang ekonomi yang inklusif.

# Deskripsi SIP MBER

**SIP MBER** adalah singkatan dari Sistem Informasi Pemberdayaan Masyarakat Berpenghasilan Rendah. SIP MBER sendiri adalah platform digital berbasis edukasi dan komunitas yang berfokus pada pemberdayaan masyarakat berpenghasilan rendah sebagai bagian dari upaya mendukung *Sustainable Development Goals (SDG) nomor 16: No Poverty dan nomor 8: Empowerment of low-income communities.* Tujuan utama dari SIP MBER (Sistem Informasi Pemberdayaan Masyarakat Berpenghasilan Rendah) adalah mendorong pemberdayaan masyarakat berpenghasilan rendah melalui akses yang setara terhadap pendidikan, pelatihan keterampilan, serta peluang ekonomi yang inklusif.

# FLOWCHART dan Use Case Diagram

## Flowchart

1. Flowchart Login

![WhatsApp Image 2025-11-02 at 00 05 56_6e9281f6](https://github.com/user-attachments/assets/874a78a6-02b6-4d5f-b583-307995be1510)

2. Flowchart Buat-Akun

<img width="2964" height="433" alt="image" src="https://github.com/user-attachments/assets/1cf74ea5-ea3b-47e8-9a72-86021f0634b6" />

3. Flowchart menu utama pendaftar

<img width="1043" height="882" alt="image" src="https://github.com/user-attachments/assets/1535921a-a191-48b8-8695-1e6c83d4173e" />

4. Flowchart menu utama staff

<img width="771" height="502" alt="image" src="https://github.com/user-attachments/assets/b07ff9cd-b078-45a9-af01-496b874f3386" />

5. Flowchart menu admin

<img width="4907" height="2531" alt="image" src="https://github.com/user-attachments/assets/cab4c6d3-827b-43a3-8df7-d5f4b2ebebe3" />

### Use Case DIagram

![WhatsApp Image 2025-10-30 at 19 14 05_68fb7dea](https://github.com/user-attachments/assets/ae30b85e-377d-4d5c-9530-07912bb1efbc)


# Fitur SIP MBER

- **Sistem Login**: ebagai titik navigasi ke fungsi-utama, Memfasilitasi pemilihan jalur sesuai peran (Admin/Staff?PendFaftar).

-  **Registrasi**: Digunakan untuk membuat akun baru sebagai Pendaftar. Data pendaftar dikumpulkan untuk berifikasi, lalu diarahkan ke Menu User setelah aktif.

-  **Tampilam pendaftar (yang belum disetujui status verifikasinya)**: Hanya menampilkan akun ada belum diverifikasi, silahkan login kembali setelah akun sudah disetujui verifikasinya, dan tombol untuk keluar.

- **Menu Utama Peserta**: Halaman utama bagi pendaftar yang status verifikasinya telah lidsetujui. peserta dapat melihat dan mengikuti program-program pelatihan yang diminati. peserta juga dapat melihat sertifikatnya apabila status program pelatihan yang diikuti peserta sudah seleai. Dan peserta dapat memperbarui akun.

- **Menu Utama Staff**: Halaman utama untuk staff dapat melihat daftar-daftar peserta dan pelatihan.

- **Menu Utama Admin**: Halaman utama untuk admin yang bertugas untuk mengelola, mengontrol, dan memperhatikan data-data dari pelatihan, Staff, pendaftar dan peserta.

- **Menu Daftar Pelatihan admin**: halaman dimana admin dapat menambahkan, memperbarui, dan menghapus data dari pelatihan.

- **Menu Daftar Peserta Admin**: halaman dimana admin dapat menambahkan, memperbarui, dan menghapus data dari peserta.

- **Menu Daftar Staff Admin**: halaman dimana admin dapat menambahkan, memperbarui, dan menghapus data dari staff.

- **Menu Daftar Pendaftar Admin**: halaman dimana admin menyetujui ataupun menolak status verifikasi dari pendaftar.


# The 5 Pillars of Object Oriented Programming

**Lima pilar utama dalam Pemrograman Berorientasi Objek (Object-Oriented Programming / OOP)** adalah fondasi yang membentuk cara berpikir dan perancangan sistem berbasis objek.

### Encapsulation (Enkapsulasi)

Pilar pertama, **Encapsulation** atau biasa disebut **Enkapsulasi**, berarti membungkus data dan fungsi dalam suatu kesatuan class untuk menjaga keamanan dan mengontrol akses. Atribut juga dibuat private dengan Getter & Setter untuk mengontrol akses data. Contoh:

<img width="841" height="286" alt="image" src="https://github.com/user-attachments/assets/5d1e55fd-b77f-424f-ae82-f313c1d33db9" />

<img width="917" height="575" alt="image" src="https://github.com/user-attachments/assets/6ffd9824-d94e-49a7-a40b-8047c8f80cbf" />

Pada class Pendaftar, encapsulation diterapkan dengan menjadikan atribut NIK, nama_lengkap, email dll bersifat private kemudian diakses melalui method getter dan setter. Hal ini menjaga keamanan data pendaftar serta membuat struktur kode lebih teratur dan mudah dikelola.

## Inheritanse

Inheritance merupakan salah satu pilar utama dalam Pemrograman Berorientasi Objek yang memungkinkan suatu class (child) mewarisi property dan method dari class lain (parent). Inheritance membantu mengurangi penulisan kode secara berulang (mengurangi redundancy kode). Sebuah kelas (superclass) dapat mewariskan property dan method kepada kelas-kelas turunannya (subclass). Artinya, subclass dapat menggunakan kembali property dan method dari superclass, serta dapat menambahkan property dan method baru atau mengubah perilaku yang sudah ada. Contoh:

<img width="928" height="203" alt="image" src="https://github.com/user-attachments/assets/0a76ff86-9f90-4e43-8428-9911a4adb3b5" />

Class StaffPelatihan mewarisi class Staff. Selain itu, class ini memiliki atribut tambahan cuaca yaitu kelolaPelatihan

<img width="408" height="161" alt="image" src="https://github.com/user-attachments/assets/a65e2707-f8d0-4413-b2ad-3705b8365b0b" />

Sama seperti class staffPelatihan, class Peserta juga mewarisi atribut umum dari pendaftar, dan menambahkan atribut untuk peserta yaitu GetIdPeserta, GetProgress dan lain-lain.

## Abstraction

Abstraksi berarti hanya menaruh karakteristik-karakteristik yang diperlukan oleh sebuah kelas tanpa harus menampilkan detail dari karakteristik tersebut. Dalam abstraction menggunakan abstract class yang merukan kelas abtrak digunakan untuk menentukan karakteristik dari sebuah kelas. Abstract class tidak bisa dibuat menjadi obek secara langsung harus diwariskan. contoh:

<img width="539" height="421" alt="image" src="https://github.com/user-attachments/assets/e7969771-b5c9-474d-99c9-b122653dbd22" />

Class PelatihanServis ini menyederhanakan kompleksitas dengan hanya menampilkan fungsi penting, dan menyembunyikan detail cara kerja. Jadi GUI tidak perlu tahu bagaimana query insert dibuat, bagaimana koneksi database dibuka, dan bagaimana error ditangani.

## Polymorphism

Polymorphism, memberi kemampuan objek untuk memiliki banyak bentuk atau perilaku berbeda tergantung konteks penggunaannya. Metode yang sama (create, read, dll) dapat diimplementasikan dengan perilaku berbeda di class lain. Misalnya di kelas peserta.java dan pelatihan.java

<img width="782" height="358" alt="image" src="https://github.com/user-attachments/assets/2b9449ad-3c0f-493e-b98e-6618b32a0524" />

<img width="478" height="98" alt="image" src="https://github.com/user-attachments/assets/dd14c7d5-1a48-4b18-acd2-aff5cd600dc1" />

## Interface

Interface adalah kelas yang mengimplementasikannya wajib menyediakan semua method yang ada di dalamnya. contoh:

<img width="278" height="62" alt="image" src="https://github.com/user-attachments/assets/2bf182f6-a60a-47a5-9fb6-8323f147ed5a" />

<img width="604" height="83" alt="image" src="https://github.com/user-attachments/assets/08a27fab-33e0-4e43-b4cf-a0e3c4389c45" />

<img width="717" height="98" alt="image" src="https://github.com/user-attachments/assets/57d0d34e-3323-4531-8e20-34535d996d53" />

## Penjelasan Struktur Package

<img width="280" height="496" alt="image" src="https://github.com/user-attachments/assets/286b687f-77ef-4783-bb22-0b66198565fe" />

## 1. Source Packages

Bagian ini berisi seluruh kode utama program. Di dalamnya terdapat beberapa package yang memiliki fungsi berbeda namun saling berkaitan.

- GUI Package ini berisi komponen tampilan antarmuka yang digunakan oleh pengguna. Seluruh halaman seperti menu utama, form login, registrasi, menu admin, dan menu user terdapat di dalam bagian ini.

- GUI.ImageIcon package ini berisi gambar-gambar berbentuk file png untuk tampilan _front end_

- META-INF Package ini berisi file xml, yang akan membantu agar HibernateUtil dapat berjalan.

- Model Package ini menyimpan class-class yang mengimplementasikan private-public, dan Setter & Getter. Seperti Admin, Staff, Staff Pelatihan, Pelatihan, Sertifikat, Peserta, dan Pendaftar.

- Service Package ini menyimpan class-class yang merepresentasikan data atau entitas yang ada di dalam database, seperti pelatihanService, pesertaService dan lain-lain.

- Util Package ini berfungsi sebagai penyedia class pendukung atau helper yang membantu proses kerja aplikasi, misalnya pengaturan format, validasi input, atau fungsi tambahan lain yang digunakan di berbagai bagian program.

## 2. Libraries

<img width="372" height="164" alt="image" src="https://github.com/user-attachments/assets/6ec02779-9c15-47bd-9d88-f463039c3597" />

Bagian ini berisi library eksternal (file .jar) yang dibutuhkan agar program dapat berjalan dengan baik, di antaranya:

- hibernate-core yang digunakan untuk menghubungkan objek Java dengan database melalui konsep ORM.

- mysql-connector-j untuk menghubungkan aplikasi dengan database MySQL.

- AbsoluteLayout untuk membantu pengaturan tata letak tampilan antarmuka / GUI.

# Mengimplementasikan ORM

<img width="909" height="507" alt="image" src="https://github.com/user-attachments/assets/799856fa-0461-4cda-9f7a-8f0baf56a504" />

# Library atau Framework yang digunakan

- Hibernate

  Hibernate digunakan sebagai framework ORM untuk menghubungkan class Java dengan tabel pada database sehingga CRUD dapat dilakukan secara otomatis tanpa banyak SQL manual. Dengan Hibernate, data entity seperti Laporan dapat langsung dipetakan ke tabel laporan.

- MYSQL & JDBC Driver

  MySQL digunakan sebagai penyimpanan data aplikasi sedangkan JDBC Driver berfungsi sebagai penghubung antara Java dan MySQL agar query dapat berjalan dengan baik. Kombinasi ini memungkinkan aplikasi menyimpan data-data seperti data staff, admin, pelatihan, pendaftar, dan peserta secara langsung ke database.

- Java Swing

  java Swing digunakan untuk membangun tampilan antarmuka aplikasi desktop seperti form input, tabel data, dan dialog notifikasi agar user dapat berinteraksi dengan mudah.

- JCalendar

  sebuah library eksternal Java yang menyediakan komponen kalender interaktif untuk aplikasi desktop berbasis Java Swing. Fungsinya adalah untuk memudahkan pengguna memilih tanggal langsung dari tampilan kalender, tanpa harus mengetik manual seperti 2025-11-02.

- Java Enum

  Java Enum dipakai untuk data yang memiliki pilihan terbatas seperti status pelatihan sehingga input lebih konsisten dan mudah dikelola.

# Cara Menggunakan Program

## Bagi Pendaftar

### Halaman Utama

![WhatsApp Image 2025-11-02 at 19 59 43_432c4c36](https://github.com/user-attachments/assets/c266f865-26ec-4b90-8127-9f7bd4aa4e50)

Halaman Utama dari program ini yaitu sebagai tempat login juga. digunakan untuk autentikasi pengguna sebelum mengakses program SIP MBER. Pengguna dapat masuk menggunakan NIK atau username dan passwprd, dan jika belum memiliki akun dapat melakukan registrasi melalui menu ‘Buat Akun’.

### Membuat Akun

![WhatsApp Image 2025-11-02 at 19 54 28_2134b98a](https://github.com/user-attachments/assets/469dd808-39b4-4c4d-9131-0ab837a41fd4)

Halaman Buat Akun digunakan untuk proses registrasi pengguna baru pada aplikasi SIP MBER. Pengguna mengisi data pribadi seperti nik, nama, email, alamat, pekerjaan, penghasilan, nomor HP, dan password. Setelah data tervalidasi, sistem menyimpan informasi tersebut ke database agar akun pendaftar dapat melakukan login ke dalam sistem.

## Role Pendaftar

### Login

![WhatsApp Image 2025-11-02 at 19 56 22_c5d70099](https://github.com/user-attachments/assets/4bc621eb-af51-48b3-aa5f-886cf539a48e)

setelah mendaftar, pendaftar tidak bisa langsung login, kevalidan data harus diverifikasi terlebih dahulu oleh admin, setelah terverifikasi baru bisa login.

## Role Peserta

![WhatsApp Image 2025-11-02 at 19 58 24_b489e77b](https://github.com/user-attachments/assets/d0194ea9-2ddc-4758-b939-4adec2fd0537)

Login menggunakan akun yang telah diverifikasi oleh admin

### Tampilan Utama

![WhatsApp Image 2025-11-02 at 20 01 38_8c133a8f](https://github.com/user-attachments/assets/1d53ec33-0c70-4773-bb7f-e606165c225e)

setelah login maka akan tertampil menu utama dari peserta yaitu daftar-daftar nama pelatihan, pendaftaran pelatihan, perbarui akun, dan lihat sertifikat

### Perbarui Akun

![WhatsApp Image 2025-11-02 at 20 02 53_a2410149](https://github.com/user-attachments/assets/0d97866c-5c1a-40f1-ad6a-c0b00682a511)

Untuk menu perbarui akun di SIP MBER, peserta memilih menu perbarui akun, lalu ubah yanng ingin diperbarui baik itu nik, nama lengkap, alamat, penghasilan, pekerjaan, nomor hp, maupun password. Setelah diubah peserta hanya perlu menekan tombol perbarui untuk memperbarui data pribadi.

### Lihat Sertifikat

![WhatsApp Image 2025-11-02 at 20 03 53_373a007c](https://github.com/user-attachments/assets/a710d24d-0a57-41b8-8829-3044be1f9b7e)

Untuk peserta jika ingin melihat sertifikat di SIP MBER, peserta harus mengikuti suatu program pelatihan dan pelatihan itu sudah mencapai 100% Progress, maka sertifikat untuk peserta akan muncul secara otomatis.

![WhatsApp Image 2025-11-02 at 20 06 04_7ddd3937](https://github.com/user-attachments/assets/5b522246-a485-4efe-9bdf-646397dad736)

Informasi sertifikat di SIP MBER berupa; nama pelatihan yang diikuti peserta, nomor sertifikat, skor program, dan tanggal sertifikat terbit.

## Role Staff

![WhatsApp Image 2025-11-02 at 23 33 27_52b1a17d](https://github.com/user-attachments/assets/e42a8cfc-c4fa-40f8-87f4-8d3b1c49ae5c)

login menggunakana akun staff yang terdaftar

### Tampilan utama

![WhatsApp Image 2025-11-02 at 23 38 05_e425e3fd](https://github.com/user-attachments/assets/519470cb-3675-4cd1-ab63-0135b3061a3c)

Di halaman utama staff, staff dapat melihat daftar-daftar Pelatihan dan daftar-daftar peserta. Juga dapat melakukan penilaian kepada peserta yang melakukan pelatihan

### Penilaian

![WhatsApp Image 2025-11-03 at 09 09 52_e2681c48](https://github.com/user-attachments/assets/a25507fe-ad09-4b9b-a86f-1337dca1d672)

di menu penilaian staff, staff dapat memberikan penilaian untuk sertifikat pada peserta pelatihan. Dengan menekan salah satu data peserta di tabel dan input nilai diatas tabel, kemudian tekan tombol "Nilai". Maka, nilai otomatis masuk ke sertifikat peserta.

## Role Admin

![WhatsApp Image 2025-11-02 at 23 16 23_88cc5c39](https://github.com/user-attachments/assets/ed667ae4-8b0d-4bd4-abd1-9be4b0ea914a)

Login menggunakan akun Admin yang telah terdaftar dalam sistem

### Menu Daftar Pelatihan

![WhatsApp Image 2025-11-03 at 06 18 41_7335f610](https://github.com/user-attachments/assets/7b9344ec-bf5a-483f-9b30-47da177852ae)

Di halaman daftar pelatihan, Admin dapat menambahkan, memperbarui, dan menghapus data pelatihan.

### Menambahkan Pelatihan

![WhatsApp Image 2025-11-02 at 23 19 50_6081c81e](https://github.com/user-attachments/assets/65988fcf-aef8-480d-9ee7-30bcb2e713ca)

Ketika Admin ingin menambahkan pelatihan admin perlu memasukkan ID pelatihan, nama pelatihan, deskripsi pelatihan (opsional), tanggal mulai, tanggal selesai, dan status pelatihan. Ketika Admin menginput tanggal pelatihan, maka tanggal dimulainya pelatihan tidak bisa melangkahi tanggal selesai pelatihan.

![WhatsApp Image 2025-11-02 at 23 19 24_8bada7a8](https://github.com/user-attachments/assets/43a2c6b9-af62-498a-b57c-c6b71893a55c)

### Memperbarui Pelatihan

Ketika Admin ingin melakukan pembaruan data pelatihan, Admin perlu menekan salah satu data pelatihan yang ada di tabel, kemudian data tersebut otomatis muncul di atas tabel, admin hanya perlu mengubah bagian yang ingin diubah. Misalnya, ID pelatihan, nama pelatihan, deskripsi pelatihan, tanggal mulai, tanggal selesai, ataupun status pelatihan.

![WhatsApp Image 2025-11-02 at 23 17 33_bfc7a5fd](https://github.com/user-attachments/assets/2ea45786-9aa3-4fae-8e94-8c0ec1f942d5)

### Menghapus Pelatihan

Ketika Admin ingin menghapus suatu data di pelatihan, Admin hanya perlu menekan salah satu data di tabel pelatihan, kemudian admin menekan tombol "hapus" yang ada di kanan atas tabel.

![WhatsApp Image 2025-11-02 at 23 18 01_dd020435](https://github.com/user-attachments/assets/0ad4a26f-c408-42ba-8c1d-705ac0487ada)

### Menu Daftar Staff

![WhatsApp Image 2025-11-03 at 06 18 54_6e5bc6de](https://github.com/user-attachments/assets/55b7b499-f146-4967-af0a-a024ed215aa8)

Di halaman menu daftar staff, admin dapat melihat daftar-daftar staff. Admin juga dapat menambahkan, memperbarui, dan menghapus suatu data staff.

### Menambahkan Staff

Untuk Fitur penambahan staff oleh admin, admin perlu memasukkan ID staff, Nama Staff, Nomor Hp Staff, Password Staff, Email Staff dan Jenis Staff. Kemudian, admin hanya perlu menekan tombol "tambah", otomatis data staff yang tadi diinput sudah masuk ke dalam data staff.

![WhatsApp Image 2025-11-02 at 23 24 17_78742deb](https://github.com/user-attachments/assets/87ba0ed2-4877-45ba-af13-28250593e058)

### Memperbarui Data Staff

Untuk Fitur memperbarui data staff oleh admin, admin hanya perlu menekan salah satu data staff yang ada di dalam tabel, maka otomatis data yang tadi ditekan akan muncul diatas tabel, admin hanya perlu mengubah data yang ingin diubah. Misalnya, ID staff, Nama Staff, Nomor Hp Staff, Password Staff, Email Staff ataupun Jenis Staff. Kemudian, admin hanya perlu menekan tombol "perbarui" maka otomatis data staff yang tadi diubah sudah diperbarui ke dalam data staff.

![WhatsApp Image 2025-11-02 at 23 22 03_93bae401](https://github.com/user-attachments/assets/63a287cc-f5aa-4692-a054-a421e109a5aa)

### Menghapus Data Staff

Ketika Admin ingin menghapus data staff, admin hanya perlu menekan salah satu data staff yang ada di dalam tabel, maka otomatis data yang tadi ditekan akan muncul diatas tabel. Kemudian, admin hanya perlu menekan tombol "hapus", maka otomatis data staff tersebut akan terhapus di dalam data

![WhatsApp Image 2025-11-02 at 23 20 39_b77c89f6](https://github.com/user-attachments/assets/aca17e6a-1315-4375-816d-c4cfff885365)

### Menu Daftar Peserta

![WhatsApp Image 2025-11-03 at 06 19 08_9f20d00a](https://github.com/user-attachments/assets/65c7332a-c5e7-40fb-83a2-4f66192a8a6e)

Di halaman menu daftar peserta, admin dapat melihat daftar-daftar peserta. Admin juga dapat menambahkan, memperbarui, dan menghapus suatu data peserta.

### Menambahkan Peserta

Ketika Admin ingin menambahkan peserta, Admin perlu menginput NIK, Nama, Alamat, Pekerjaan, Penghasilan, Tanggal Daftar, Email, Nomor HP dan Password. Kemudian, admin hanya perlu menekan tombol "Tambah". Maka, otomatis data yang tadi diinput sudah dimasukkan ke dalam data peserta.

![WhatsApp Image 2025-11-02 at 23 30 28_d8f04539](https://github.com/user-attachments/assets/781f4439-6f08-4a6c-99a2-4d1aa0be3c0b)

### Memperbarui Peserta

Untuk Fitur memperbarui data peserta oleh admin, admin hanya perlu menekan salah satu data peserta yang ada di dalam tabel, maka otomatis data yang tadi ditekan akan muncul diatas tabel, admin hanya perlu mengubah data yang ingin diubah. Misalnya, NIK, Nama, Alamat, Pekerjaan, Penghasilan, Tanggal Daftar, Email, Nomor HP, ataupun Password. Kemudian, admin hanya perlu menekan tombol "perbarui" maka otomatis data peserta yang tadi diubah sudah diperbarui ke dalam data peserta.

![WhatsApp Image 2025-11-02 at 23 25 27_1384913f](https://github.com/user-attachments/assets/b1a961b1-ffd6-4398-a6bd-a403199cc7ba)

### Menghapus Peserta

Ketika Admin ingin menghapus data peserta, admin hanya perlu menekan salah satu data peserta yang ada di dalam tabel, maka otomatis data yang tadi ditekan akan muncul diatas tabel. Kemudian, admin hanya perlu menekan tombol "hapus", maka otomatis data peserta tersebut akan terhapus di dalam data

![WhatsApp Image 2025-11-02 at 23 26 04_d7fbf299](https://github.com/user-attachments/assets/3c11e037-1cdc-4544-aaac-ee8041775581)

### Daftar Pendaftar

Untuk menu daftar pendaftar, admin dapat melakukan verifikasi kepada pendaftar yang statusnya masih menunggu.

![WhatsApp Image 2025-11-03 at 06 21 04_7e010175](https://github.com/user-attachments/assets/ecde98b4-3d8d-45be-9f7a-8c7fb592c454) 

### Menerima/Menolak Verifikasi Pendaftar

Ketika admin ingin menerima ataupun menolak verifikasi pendaftar, Admin cukup menekan salah satu data pendaftar yang ada di dalam tabel. Kemudian, admin hanya perlu menekan tombol "Diterima" atapun "Ditolak". Maka, otomatis pendaftar tersebut dapat melakukan login ketika admin menerima pendaftar tersebut.

Ketika Diterima

![WhatsApp Image 2025-11-02 at 23 31 21_3a911d51](https://github.com/user-attachments/assets/2e9a2b7d-8eff-4249-a1f4-fe53ff83b5a4)

Ketika Ditolak

![WhatsApp Image 2025-11-02 at 23 32 09_e048646b](https://github.com/user-attachments/assets/00a0d988-541c-4ad4-b66e-6e55c02fa9cd)
