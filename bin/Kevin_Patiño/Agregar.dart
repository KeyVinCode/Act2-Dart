import 'dart:io';
import '../main.dart';

void Agregar(List<Contacto> agenda) {
  stdout.write("Ingrese el nombre ");
  String? nombrein = stdin.readLineSync();

  if (nombrein == null || nombrein.isEmpty) {
    stderr.writeln("El nombre no debe de estar vacio");
    return;
  }

  stdout.write("Ingrese el numero");
  String? telefonoin = stdin.readLineSync();

  if (telefonoin == null || telefonoin.isEmpty) {
    stderr.writeln("El telefono no puede estar vacia");
    return;
  }
  agenda.add(Contacto(nombrein.trim(), telefonoin.trim()));
  print('');
}
