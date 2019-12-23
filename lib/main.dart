import 'package:flutter/material.dart';

import 'src/routes/routes.dart';

main()  {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "BELLMOI",
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,

      initialRoute: '/',
      routes: getApplicationRoutes(),
      
    );
  }
}
