import 'package:flutter/material.dart';
import 'package:flutterroutes/utlies/routes.dart';
import 'package:flutterroutes/utlies/routes_name.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RoutesName.homeScreen,
      onGenerateRoute: Routes.genrateRoutes,
    );
  }
}
