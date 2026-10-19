import 'dart:io';

import '../../lib/main.dart';

void listarContactos(List<Contacto> agenda) {
  print('\n--- Lista de Contactos ---');
  if (agenda.isEmpty) {
    print('No hay contactos en la agenda');
  } else {
    for (var contacto in agenda) {
      print('Nombre: ${contacto.nombre}, Teléfono: ${contacto.telefono}');
    }
  }
}


void buscarContacto(List<Contacto> agenda, String nombre) {

  var contactoEncontrado = agenda.cast<Contacto?>().firstWhere(
    (contacto) => contacto?.nombre.toLowerCase() == nombre.toLowerCase(),
    orElse: () => null,
  );

  if (contactoEncontrado != null) {
    print(
      'Contacto encontrado: Nombre: ${contactoEncontrado.nombre}, Teléfono: ${contactoEncontrado.telefono}',
    );
  } else {
    print('El contacto "$nombre" no se encuentra en la agenda.');
  }
}