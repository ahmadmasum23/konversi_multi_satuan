// Import pustaka dart:io untuk menggunakan stdin dan stdout
import 'dart:io';

// Fungsi untuk mengonversi suhu dari Celsius ke Fahrenheit dan Kelvin
void konversiSuhu() {
  // Meminta input suhu dari pengguna dalam satuan Celsius
  stdout.write('Masukkan suhu dalam Celsius: ');
  
  // Membaca input dari pengguna dan mengubahnya menjadi tipe double
  double celsius = double.parse(stdin.readLineSync()!);
  
  // Menghitung suhu dalam Fahrenheit menggunakan rumus: (C × 9/5) + 32
  double fahrenheit = (celsius * 9 / 5) + 32;
  
  // Menghitung suhu dalam Kelvin dengan menambahkan 273.15 ke nilai Celsius
  double kelvin = celsius + 273.15;

  // Menampilkan hasil konversi ke Fahrenheit dan Kelvin dengan 2 angka di belakang koma
  print('$celsius °C = ${fahrenheit.toStringAsFixed(2)} °F');
  print('$celsius °C = ${kelvin.toStringAsFixed(2)} K');
}
