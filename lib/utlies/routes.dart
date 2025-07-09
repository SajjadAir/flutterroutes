import 'package:flutter/material.dart';
import 'package:flutterroutes/home_screen.dart';
import 'package:flutterroutes/profile_screen.dart';
import 'package:flutterroutes/projects_screen.dart';
import 'package:flutterroutes/setings_screen.dart';
import 'package:flutterroutes/utlies/routes_name.dart';


class Routes{
  static Route<dynamic> genrateRoutes(RouteSettings settings){
    switch(settings.name){
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context)=>HomeScreen());
      case RoutesName.profileScreen:
        return MaterialPageRoute(builder: (context)=>ProfileScreen( data: settings.arguments as Map,));
      case RoutesName.projectScreen:
        return MaterialPageRoute(builder: (context)=>ProjectsScreen());
      case RoutesName.settingScreen:
        return MaterialPageRoute(builder: (context)=>SetingsScreen());
      case RoutesName.getName:
        return MaterialPageRoute(builder: (context)=>GetName());
      default:
        return MaterialPageRoute(builder: (context){
          return Scaffold(
            body: Center(child: Text('No routes found')),
          );
        });
    }
  }
}