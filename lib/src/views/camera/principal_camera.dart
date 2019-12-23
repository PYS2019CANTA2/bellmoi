import 'package:flutter/material.dart';

import 'package:bellmoi/src/widgets/utils.dart' as utils;
//import 'package:bellmoi/src/pages/category/principal_categorias_page.dart';

//import 'account/login.dart';
import 'camera_screen.dart';

class  PrincipalCamera extends StatefulWidget {
 PrincipalCamera();
  @override
  _PrincipalCameraState createState() => new _PrincipalCameraState();
}

class _PrincipalCameraState extends State<PrincipalCamera>
    with SingleTickerProviderStateMixin {

  bool _isReady = false;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /* ------ MENU -----------------------------*/
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(39, 171, 178, 0.5),
        // LOGO Izquierda
        title: Image.asset('assets/logo.png', height: 30),

        // Button LOGIN
        actions: <Widget>[
      /*    IconButton(
            icon: Icon(Icons.photo_library),
            onPressed: () {
              utils.showAlertDialog(context, 'Información', 'Galeria disponible muy pronto.');
            },
          ),
          IconButton(
            icon: Icon(Icons.cached),
            onPressed: () {
              utils.showAlertDialog(context, 'Información', 'Muy pronto la funcion ACTUALIZAR estara disponible.');
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              utils.showAlertDialog(context, 'Información', 'Muy pronto el MENÚ estara disponible.');
            },
          ),*/
          IconButton(
            iconSize: 35.0,
            alignment: Alignment.center,
            icon: Icon(Icons.account_circle),
            onPressed: () {
             // utils.showAlertDialog_3(context, 'Información', 'Esta seguro que desea cerrar la sesión.', Login());
            },
          )
        ],
      ),
      
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          /* FONDO */
          Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 100 / 100,
                    /*child: Container(
                      color: Colors.grey,
                    ) *///
                    child: new CameraScreen(),
                  ),
                ),
              ]
            )
          ),
          Container(            
            padding: EdgeInsets.all(5),
            height: 190,
            //color: utils.colorTurquesa,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Container(
                          child: FlatButton(
                            child: Image.asset('assets/pricamera/botonCircular1.png', height: 70),
                            onPressed: (){
                              utils.showAlertDialog(context, 'Boton', 'BOUTIQUE');
                            }
                          )
                        )
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          width: 100,
                          child: FlatButton(
                            child: Image.asset('assets/pricamera/botonCircular5.png', height: 70),
                            onPressed: (){
                              utils.showAlertDialog(context, 'Boton', 'CAMERA');
                             // utils.goPage(context, PrincipalCategorias());  // Accesos a las galerias desde boton camera
                            }
                          )
                        )
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          width: 100,
                          child: FlatButton(
                            child: Image.asset('assets/pricamera/botonCircular4.png', height: 70),
                            onPressed: (){
                              utils.showAlertDialog(context, 'Boton', 'BSITUTERÍA');
                            }
                          )
                        )
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: FlatButton(
                            child: Image.asset('assets/pricamera/botonCircular2.png', height: 70),
                            onPressed: (){
                              utils.showAlertDialog(context, 'Boton', 'PEINADOS');
                            }
                          )
                        )
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          width: 100,
                          child: FlatButton(
                            child: Image.asset('assets/pricamera/botonCircular3.png', height: 70),
                            onPressed: (){
                              utils.showAlertDialog(context, 'Boton', 'MI GALERIA');
                            }
                          )
                        )
                      )
                    ],
                  ),
                )
              ]
            )
          )
        ],
      ),
      
      /*
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          size: 35,
          color: Colors.white,
        ),
        onPressed: () => print("Opeeen chats"),
      ),
      */
    );
  }
}