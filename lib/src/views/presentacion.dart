
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:bellmoi/src/widgets/utils.dart';

//import 'account/login.dart';
import 'home.dart';

class Presentacion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          /* FONDO DEL LAYOUT */
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/presentacion/presentacionBeLLMoi.png"), 
                fit: BoxFit.cover
              ),
            ),
          ),
          /* IMAGES BODY */
          Container(
            child: Column(
              children: <Widget>[

                /* BOTON LOGIN */
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 30, 0, 0),
                    height: 90,
                    alignment: Alignment.topRight,
                    child: FlatButton(                    
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      child: Image.asset(
                        'assets/presentacion/botonPresentacionLogin.png',
                        fit: BoxFit.cover,
                        width: 60,
                        ),
                      onPressed: () {
                      //  goPage(context, Login());
                      },
                    ),     
                  ),
                ),
                /* BODY */
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 20, 0),
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'assets/presentacion/presentacionBeLLMoi_1.png',
                      height: 120,
                    ),
                  )
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 6,
                          child: Container(
                            child: Image.asset(
                              'assets/presentacion/presentacionBeLLMoi_2.png',
                              height: 120,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            child: Image.asset(
                              'assets/presentacion/presentacionBeLLMoi_3.png',
                              height: 120,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                
                /* BOTON DE INICIO */
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.bottomRight,
                    child: FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      child: Image.asset(
                        'assets/presentacion/botonPresentacion.png',
                        fit: BoxFit.cover,
                        width: 150,
                        ),
                      onPressed: () {
                        goPage(context, HomePage());
                      },
                    )
                  ),
                )
              ]
            )
          )
        ]
      )
    );
  }

}
