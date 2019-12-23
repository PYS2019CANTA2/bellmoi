import 'package:flutter/material.dart';

//import 'package:bellmoi/src/pages/product/product_page.dart';

import 'package:bellmoi/src/widgets/utils.dart' as utils;


class BotonPersonalizado extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  BotonPersonalizado({
    Key key,
    @required this.title,
  }) : super (key: key);

  @override
  Size get preferredSize {
    return new Size.fromHeight(kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Padding(
          padding: const EdgeInsets.all(8.0),
        );
        Scaffold.of(context).showSnackBar(SnackBar(
       //   content: Text('Esto sale del boton $title'),  // Salida de la camara
        ));
      },
      child: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(12.0),
        width: double.parse('300.0'),
        height: double.parse('50.0'),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF17ead9), Color(0xFF6078ea)]
            ),
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: [
              BoxShadow(
                  color: Color(0xFF6078ea).withOpacity(.3),
                  offset: Offset(0.0, 8.0),
                  blurRadius: 8.0)
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            //onTap: () {},
            child: Center(
              child: Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins-Bold",
                      fontSize: 18,
                      letterSpacing: 1.0)),
            ),
          ),
        ),
      ),
    );
  }
  
}


class BotonPersonalizado2 extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  BotonPersonalizado2({
    Key key,
    @required this.title,
  }) : super (key: key);

  @override
  Size get preferredSize {
    return new Size.fromHeight(kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Padding(
          padding: const EdgeInsets.all(8.0),
        );
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Esto sale del boton $title'),
        ));
      },
      child:  Container(
        alignment: Alignment.center,
        child: FlatButton(
          child: Image.asset('assets/menu/' + title +''),
          onPressed: () {
            utils.showAlertDialog(context, 'Muy Pronto', 'Estamos trabajando!' + title);
           // utils.goPage(context, ProductPage());
          },
        ),
      )
    );
  }

  
  
}

