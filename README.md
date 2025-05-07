# flutter uts aplikasi jadwal kuliah dan kegiatan mahasiswa adapatif interaktif


## Nama

Yesi Agustin (4522210023)

## Deskripsi singkat aplikasi

Aplikasi ini merupakan platform Flutter yang dirancang secara responsif dan adaptif, bertujuan untuk memberikan kemudahan akses informasi penting bagi mahasiswa. Aplikasi ini memiliki tiga halaman utama, yaitu Halaman Utama, Jadwal Perkuliahan, dan Profil Mahasiswa, yang tampilannya secara otomatis menyesuaikan dengan berbagai ukuran layar perangkat. Fitur-fitur utama yang tersedia mencakup manajemen aktivitas mahasiswa, opsi untuk beralih antara mode terang dan gelap, serta kemampuan untuk memperbarui data pribadi pengguna.

## Screenshot emulator
![image](https://github.com/user-attachments/assets/d24c2af5-ecd1-4a94-b03f-511ef502c314)
![image](https://github.com/user-attachments/assets/bd8793f8-5f19-440b-a5b8-52baed2d30c6)
![image](https://github.com/user-attachments/assets/e3c77efb-631e-4950-9151-76590bb6267d)
![image](https://github.com/user-attachments/assets/2b1f3987-b88d-4be2-8f58-ec447cec783d)

## Penjelasan program
- Struktur Navigasi Utama: Aplikasi memiliki tiga halaman utama: Beranda, Jadwal Kuliah, dan Profil Pengguna, yang dinavigasi menggunakan BottomNavigationBar. Setiap tab menampilkan konten yang berbeda sesuai dengan indeks yang dipilih.
- Fitur Pengubah Tema Gelap/Terang: Tersedia saklar (Switch) untuk mengganti tampilan aplikasi antara mode terang dan gelap secara langsung dari halaman profil.
- Responsif dan Adaptif: Aplikasi dirancang agar responsif dan adaptif terhadap berbagai ukuran layar perangkat, sehingga tampilan tetap optimal baik di perangkat kecil maupun besar.
- Pemisahan Struktur Kode: Setiap halaman (Home, Schedule, Profile) dan tema (light/dark) dipisahkan dalam file berbeda untuk memudahkan pemeliharaan dan pengembangan lebih lanjut, mengikuti praktik pemrograman yang baik.
- Mendukung Scroll Horizontal: Tabel dibungkus dengan SingleChildScrollView secara horizontal agar tetap bisa diakses dengan baik di layar sempit atau kecil.
