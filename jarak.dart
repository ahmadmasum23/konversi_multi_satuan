import 'dart:io';

void konversiJarak() {
  stdout.write('Masukkan jarak dalam Kilometer: ');
  double km = double.parse(stdin.readLineSync()!);
  double meter = km * 1000;
  double mil = km * 0.621371;

  print('$km km = ${meter.toStringAsFixed(2)} m');
  print('$km km = ${mil.toStringAsFixed(2)} mil');
}
