import 'dart:io';

void konversiWaktu() {
  stdout.write('Masukkan waktu dalam jam: ');
  double jam = double.parse(stdin.readLineSync()!);
  double menit = jam * 60;
  double detik = jam * 3600;

  print('$jam jam = ${menit.toStringAsFixed(2)} menit');
  print('$jam jam = ${detik.toStringAsFixed(2)} detik');
}
