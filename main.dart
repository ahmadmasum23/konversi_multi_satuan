import 'dart:io';
import 'suhu.dart';
import 'jarak.dart';
import 'waktu.dart';
import 'berat.dart';

void clearConsole() {
  if (Platform.isWindows) {
    Process.runSync("cls", [], runInShell: true);
  } else {
    stdout.write("\x1B[2J\x1B[0;0H");
  }
}

void main() {
  print("========================================================");
  print('=== Selamat Datang di Aplikasi Konversi Multi Satuan ===');
  print("========================================================");
  print('===         Tekan ENTER untuk melanjutkan !!!        ===');
  print("========================================================");
  stdin.readLineSync(); // Tunggu ENTER
  clearConsole(); // Hapus layar

  while (true) {
    print("===========================");
    print('===    Menu Konversi    ===');
    print('===   1. Konversi Suhu  ===');
    print('===   2. Konversi Jarak ===');
    print('===   3. Konversi Waktu ===');
    print('===   4. Konversi Berat ===');
    print('===   5. Keluar         ===');
    print("===========================");

    stdout.write('Pilih jenis konversi (1-5): ');
    String? pilihan = stdin.readLineSync();

    clearConsole(); // Bersihkan sebelum konversi ditampilkan

    switch (pilihan) {
      case '1':
        konversiSuhu();
        break;
      case '2':
        konversiJarak();
        break;
      case '3':
        konversiWaktu();
        break;
      case '4':
        konversiBerat();
        break;
      case '5':
        print("============================================");
        print('Terima kasih telah menggunakan aplikasi ini.');
        print("============================================");
        exit(0);
      default:
        print('Pilihan tidak valid. Coba lagi.');
    }

    print('\nTekan ENTER untuk kembali ke menu utama...');
    stdin.readLineSync(); // Tunggu
    clearConsole(); // Bersihkan sebelum tampil ulang menu
  }
}
