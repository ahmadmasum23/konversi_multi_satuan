// suhu.dart
import 'dart:io';

void konversiSuhu() {
  stdout.write('Masukkan suhu dalam Celsius: ');
  double celsius = double.parse(stdin.readLineSync()!);
  double fahrenheit = (celsius * 9 / 5) + 32;
  double kelvin = celsius + 273.15;

  print('$celsius °C = ${fahrenheit.toStringAsFixed(2)} °F');
  print('$celsius °C = ${kelvin.toStringAsFixed(2)} K');
}
