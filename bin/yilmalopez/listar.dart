import 'dart:io';
import '../../lib/contac.dart';

// 1. Listar contactos (Esta ya estaba bien)
void listarContactos(List<Contacto> agenda) {
  print('\n--- Lista de Contactos ---');
  if (agenda.isEmpty) {
    print('No hay contactos en la agenda.');
  } else {
    for (var contacto in agenda) {
      print('Nombre: ${contacto.nombre}, Teléfono: ${contacto.telefono}');
    }
  }
}

// 2. Buscar contacto (Modificada para que pida el nombre ella misma)
void buscarContacto(List<Contacto> agenda) {
  stdout.write('Escribe el nombre del contacto que deseas buscar: ');
  String? nombre = stdin.readLineSync();

  // Validamos que el usuario haya escrito algo
  if (nombre == null || nombre.trim().isEmpty) {
    print('No ingresaste un nombre válido.');
    return;
  }

  // Lógica de búsqueda
  var contactoEncontrado = agenda.cast<Contacto?>().firstWhere(
    (contacto) => contacto?.nombre.toLowerCase() == nombre.toLowerCase(),
    orElse: () => null,
  );

  if (contactoEncontrado != null) {
    print('Nombre: ${contactoEncontrado.nombre}, Teléfono: ${contactoEncontrado.telefono}');
  } else {
    print('El contacto "$nombre" no se encuentra en la agenda.');
  }
}