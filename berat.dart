import 'dart:io';

void konversiBerat() {
  stdout.write('Masukkan berat dalam Kilogram: ');
  double kg = double.parse(stdin.readLineSync()!);
  double gram = kg * 1000;
  double pon = kg * 2.20462;

  print('$kg kg = ${gram.toStringAsFixed(2)} gram');
  print('$kg kg = ${pon.toStringAsFixed(2)} lb');
}
