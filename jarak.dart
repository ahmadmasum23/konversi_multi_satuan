// Import pustaka dart:io untuk memungkinkan input dan output melalui terminal
import 'dart:io';

// Fungsi untuk mengonversi jarak dari Kilometer ke Meter dan Mil
void konversiJarak() {
  // Meminta input dari pengguna berupa jarak dalam satuan Kilometer
  stdout.write('Masukkan jarak dalam Kilometer: ');
  
  // Membaca input dan mengubahnya menjadi tipe double
  double km = double.parse(stdin.readLineSync()!);
  
  // Mengonversi Kilometer ke Meter (1 km = 1000 m)
  double meter = km * 1000;
  
  // Mengonversi Kilometer ke Mil (1 km ≈ 0.621371 mil)
  double mil = km * 0.621371;

  // Menampilkan hasil konversi ke Meter dan Mil dengan 2 angka di belakang koma
  print('$km km = ${meter.toStringAsFixed(2)} m');
  print('$km km = ${mil.toStringAsFixed(2)} mil');
}
