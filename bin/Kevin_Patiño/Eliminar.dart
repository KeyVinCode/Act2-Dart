import 'dart:io';
import '../../lib/contac.dart';

void Eliminar(List<Contacto> agenda) {
  int ListE = agenda.length;
  int i; 

  if (ListE == 0){
    print('La lista esta vacia ingresa un registro para ver datos.');
  } 

  for (i = 0; i < ListE; i++){
    print('${i+1}: ${agenda[i].nombre} ');
  }

  stdout.write('Ingres el numero del contacto que desea eliminar: ');
  String? Elimin = stdin.readLineSync();
  int? Box = int.tryParse(Elimin ?? '');

  if (Box != null && Box > 0 && Box <= ListE){
    Contacto contactoElim = agenda.removeAt(Box-1);
    print('Contacto eliminado con ${contactoElim.nombre}');
  }else{
    print('numero no valido');
  }

  
 

}
