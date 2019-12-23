import 'package:flutter/material.dart';

import 'package:bellmoi/src/views/presentacion.dart';


Map <String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/'         : ( BuildContext context ) => Presentacion(),
   // 'login'     : ( BuildContext context ) => Login(),
    //'register'  : ( BuildContext context ) => Register(),
    //'home'      : ( BuildContext context ) => HomePage(cameras),

    //'products'  : ( BuildContext context ) => ProductPage(),
   // 'listprod'  : ( BuildContext context ) => ProductListPage(),
  };
}
