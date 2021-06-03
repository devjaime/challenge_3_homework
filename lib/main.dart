import 'package:flutter/material.dart';

import 'pages/alert_page.dart';
import 'routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Challenge 2',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings ){

        print( 'Ruta llamda: ${ settings.name }' );

        return MaterialPageRoute(
          builder: ( BuildContext context ) => AlertPage()
        );


      },
      
    );
  }
}

