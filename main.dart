// Import pustaka untuk input/output terminal
import 'dart:io';

// Import modul/modul konversi satuan dari file lain
import 'suhu.dart';
import 'jarak.dart';
import 'waktu.dart';
import 'berat.dart';

// Fungsi untuk membersihkan layar terminal (cross-platform)
void clearConsole() {
  if (Platform.isWindows) {
    // Perintah 'cls' digunakan untuk membersihkan layar di Windows
    Process.runSync("cls", [], runInShell: true);
  } else {
    // Kode ANSI untuk membersihkan layar di sistem selain Windows (Linux/Mac)
    stdout.write("\x1B[2J\x1B[0;0H");
  }
}

// Fungsi utama program
void main() {
  // Menampilkan layar pembuka
  print("========================================================");
  print('=== Selamat Datang di Aplikasi Konversi Multi Satuan ===');
  print("========================================================");
  print('===         Tekan ENTER untuk melanjutkan !!!        ===');
  print("========================================================");
  
  // Menunggu pengguna menekan ENTER sebelum lanjut
  stdin.readLineSync(); 
  clearConsole(); // Bersihkan layar

  // Perulangan utama program (loop menu utama)
  while (true) {
    // Menampilkan menu pilihan
    print("===========================");
    print('===    Menu Konversi    ===');
    print('===   1. Konversi Suhu  ===');
    print('===   2. Konversi Jarak ===');
    print('===   3. Konversi Waktu ===');
    print('===   4. Konversi Berat ===');
    print('===   5. Keluar         ===');
    print("===========================");

    // Meminta input pilihan dari pengguna
    stdout.write('Pilih jenis konversi (1-5): ');
    String? pilihan = stdin.readLineSync();

    clearConsole(); // Bersihkan layar sebelum menampilkan hasil konversi

    // Menentukan aksi berdasarkan pilihan
    switch (pilihan) {
      case '1':
        konversiSuhu(); // Panggil fungsi konversi suhu
        break;
      case '2':
        konversiJarak(); // Panggil fungsi konversi jarak
        break;
      case '3':
        konversiWaktu(); // Panggil fungsi konversi waktu
        break;
      case '4':
        konversiBerat(); // Panggil fungsi konversi berat
        break;
      case '5':
        // Menampilkan pesan keluar dan akhiri program
        print("============================================");
        print('Terima kasih telah menggunakan aplikasi ini.');
        print("============================================");
        exit(0); // Keluar dari program
      default:
        // Jika pilihan tidak valid
        print("===============================");
        print('Pilihan tidak valid. Coba lagi.');
        print("==============================");
    }

    // Menunggu pengguna sebelum kembali ke menu utama

    print('\nTekan ENTER untuk kembali ke menu utama...');
    stdin.readLineSync();
    clearConsole(); // Bersihkan layar untuk tampilkan menu lagi
  }
}
// selesai sudah ini rasanya 