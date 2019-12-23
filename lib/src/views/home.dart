import 'package:bellmoi/src/views/camera/camera_screen.dart';
import 'package:flutter/material.dart';

import 'package:bellmoi/src/views/camera/principal_camera.dart';
import 'package:bellmoi/src/widgets/boton.dart';
//import 'package:firebase_auth/firebase_auth.dart';

import 'package:bellmoi/src/widgets/utils.dart' as utils;
//import 'package:google_sign_in/google_sign_in.dart';

//import 'account/login.dart';

//final FirebaseAuth _auth = FirebaseAuth.instance;
//final GoogleSignIn _googleSignIn = GoogleSignIn();

class HomePage extends StatefulWidget {

  HomePage();

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* ------ MENU -----------------------------*/
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(39, 171, 178, 0.5),
        // LOGO Izquierda
        title: Image.asset('assets/logo.png', height: 30),

        // Button LOGIN
        actions: <Widget>[
          IconButton(
            iconSize: 35.0,
            alignment: Alignment.center,
            icon: Icon(Icons.account_circle),
            onPressed: () {
            //  _signOutGoogle();
              //utils.showAlertDialog_3(context, 'IMPORTANTE', 'Estas seguro que deseas CERRAR la sesión.', Login());
            },
          )
        ],
      ),

      /* ------ CONTENIDO -----------------------------*/
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 6,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 6,
                          //---------------------------------------------------------
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Container(
                                child: SizedBox(
                                  width: 250,
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('assets/menu/maquillaje.jpg', height: 350, fit: BoxFit.fill,),
                                      ),
                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        padding: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: <Color>[
                                              Colors.black.withAlpha(0),
                                              Colors.black12,
                                              Colors.black45
                                            ],
                                          ),
                                        ),
                                        //child: BotonPersonalizado(title: 'BOUTIQUE'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: BotonPersonalizado2(title: utils.btnBoutique1_05),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          //---------------------------------------------------------
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Container(
                                child: SizedBox(
                                  width: 250,
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('assets/menu/bisuteria.jpg', height: 350, fit: BoxFit.fill,),
                                      ),
                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        padding: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: <Color>[
                                              Colors.black.withAlpha(0),
                                              Colors.black12,
                                              Colors.black45
                                            ],
                                          ),
                                        ),
                                        //child: BotonPersonalizado(title: 'BOUTIQUE'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: BotonPersonalizado2(title: utils.btnBoutique2_05),
                              )
                            ],
                          ),
                        )
                      ]
                    )
                  ),
                  Expanded(
                    flex: 6,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 6,
                          //---------------------------------------------------------
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Container(
                                child: SizedBox(
                                  width: 250,
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('assets/menu/peinados.jpg', height: 350, fit: BoxFit.fill,),
                                      ),
                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        padding: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: <Color>[
                                              Colors.black.withAlpha(0),
                                              Colors.black12,
                                              Colors.black45
                                            ],
                                          ),
                                        ),
                                        //child: BotonPersonalizado(title: 'BOUTIQUE'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: BotonPersonalizado2(title: utils.btnBoutique3_05),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          //---------------------------------------------------------
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Container(
                                child: SizedBox(
                                  width: 250,
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('assets/menu/galeria.jpg', height: 350, fit: BoxFit.fill,),
                                      ),
                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        padding: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: <Color>[
                                              Colors.black.withAlpha(0),
                                              Colors.black12,
                                              Colors.black45
                                            ],
                                          ),
                                        ),
                                        //child: BotonPersonalizado(title: 'BOUTIQUE'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: BotonPersonalizado2(title: utils.btnBoutique4_05),
                              )
                            ],
                          ),
                          /*
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.deepPurple,
                            height: 500,
                            child: BotonPersonalizado(title: 'BISUTERIA'),
                          )
                          */
                        )
                      ]
                    )
                  ),
                ]
              )
            ),
            Container(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      'assets/menu/botonCentro.png',
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      child: Image.asset(
                        'assets/menu/botonCentroCamera.png',
                        height: 70,
                      ),
                      onPressed: () {
                       // utils.showAlertDialog(context, 'Muy Pronto', 'Estara disponible la funcionalidad del boton --> CAMERA');
                        //utils.goPage(context, PrincipalCamera());
                        utils.goPage(context, CameraScreen());
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
/*
  void _signOutGoogle() async {
    await _googleSignIn.signOut();
    //utils.goPage(context, Login());
    
  }*/
}
