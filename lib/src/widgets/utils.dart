import 'package:flutter/material.dart';

/**
 * Widget que muestra un ShowAlert
 * 
 */
showAlertDialog(BuildContext context, String titulo, String mensaje) {
  Widget okButton = FlatButton(
    child: Text(
      'OK',
      style: TextStyle(
        color: Color.fromRGBO(39, 191, 178, 1), 
        fontSize: 20,
        fontWeight: 
        FontWeight.bold
      ),
    ),
    onPressed: (){
      Navigator.of(context).pop();
    }
  );

  AlertDialog alert = AlertDialog(
    contentTextStyle: TextStyle(color: Color.fromRGBO(39, 191, 178, 1)),
    titleTextStyle: TextStyle(color: Color.fromRGBO(39, 191, 178, 1), fontSize: 20, fontWeight: FontWeight.bold),
    title: Text(titulo),
    content: Text(mensaje),
    actions: <Widget>[
      okButton
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    }
  );
}

/*
 * Widget que redirecciona a otra pagina
 * Widget page : nombre de la pagina
 */
goPage(BuildContext context, Widget page) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(builder: (_) => page),
  );
}

/* 
 * Definicion de los codigos de colores
 * para la app
 * */
final Color colorTurquesa = Color.fromRGBO(39, 191, 178, 1);
final Color colorTurquesaOpaco_01 = Color.fromRGBO(39, 191, 178, 0.1);
final Color colorTurquesaOpaco_025 = Color.fromRGBO(39, 191, 178, 0.25);
final Color colorTurquesaOpaco_05 = Color.fromRGBO(39, 191, 178, 0.5);

/* 
 * Obtener las Imagenes de los Botones del Menu
 * Imagen formato .png
 * */
final String btnBoutique1_05 = 'botonRectangular1_05.png';
final String btnBoutique2_05 = 'botonRectangular2_05.png';
final String btnBoutique3_05 = 'botonRectangular3_05.png';
final String btnBoutique4_05 = 'botonRectangular4_05.png';