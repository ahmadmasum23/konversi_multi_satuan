// Import pustaka dart:io agar bisa membaca input dari pengguna dan menampilkan output
import 'dart:io';

// Fungsi untuk mengonversi berat dari Kilogram ke Gram dan Pon (Pound)
void konversiBerat() {
  // Meminta pengguna memasukkan berat dalam satuan Kilogram
  stdout.write('Masukkan berat dalam Kilogram: ');
  
  // Membaca input dari pengguna dan mengubahnya ke tipe double
  double kg = double.parse(stdin.readLineSync()!);
  
  // Mengonversi Kilogram ke Gram (1 kg = 1000 gram)
  double gram = kg * 1000;
  
  // Mengonversi Kilogram ke Pon (1 kg ≈ 2.20462 pon)
  double pon = kg * 2.20462;

  // Menampilkan hasil konversi ke Gram dan Pon dengan 2 angka di belakang koma
  print('$kg kg = ${gram.toStringAsFixed(2)} gram');
  print('$kg kg = ${pon.toStringAsFixed(2)} lb');
}
