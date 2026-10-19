import 'dart:io';
import 'Kevin_Patiño/Agregar.dart';
import 'Kevin_Patiño/Eliminar.dart';

class Contacto{
  String nombre;
  String telefono; 
  Contacto(this.nombre,this.telefono);
}

void main(){
  List<Contacto> agenda =[];
  bool ejecuntando = true;

  while (ejecuntando){
    print('\n--- Agenda de Contactos ---');
    print('1. Agregar Contacto');
    print('2. Ver contacto');
    print('3. Buscar conteacto');
    print('4.Eliminiar Contacto');
    print('5. Salir');
    stdout.write('Elige una opcion: '); 

    String? opcion = stdin.readLineSync();
    switch (opcion){
      case '1':
          Agregar(agenda);
        break;
      case '2':
        break;
      case '3':
       break;
      case'4' : 
        Eliminar(agenda);
        break;
      case '5':
        print('Saliendo del la agenda');
        ejecuntando = false; 
        break;
      default:
        print('opcion no válida . Intenta de nuevo');
    }

  }
}