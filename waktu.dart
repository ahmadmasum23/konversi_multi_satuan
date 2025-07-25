// Import pustaka dart:io untuk membaca input dari pengguna dan menampilkan output
import 'dart:io';

// Fungsi untuk mengonversi waktu dari satuan jam ke menit dan detik
void konversiWaktu() {
  // Meminta pengguna memasukkan waktu dalam satuan jam
  stdout.write('Masukkan waktu dalam jam: ');
  
  // Membaca input dari pengguna dan mengubahnya menjadi tipe double
  double jam = double.parse(stdin.readLineSync()!);
  
  // Menghitung konversi dari jam ke menit (1 jam = 60 menit)
  double menit = jam * 60;
  
  // Menghitung konversi dari jam ke detik (1 jam = 3600 detik)
  double detik = jam * 3600;

  // Menampilkan hasil konversi ke menit dan detik dengan 2 angka di belakang koma
  print('$jam jam = ${menit.toStringAsFixed(2)} menit');
  print('$jam jam = ${detik.toStringAsFixed(2)} detik');
}
// dlok en