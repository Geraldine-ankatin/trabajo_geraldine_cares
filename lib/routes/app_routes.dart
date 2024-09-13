import 'package:flutter/material.dart';

import '../screen/screen.dart';


class AppRoutes {
  static const initialRoute = 'home';
  static Map<String, Widget Function(BuildContext)> routes ={
    'home':(BuildContext context)=> const HomeScreen(),
    'login':(BuildContext context)=> const LoginScreen(),
    'password':(BuildContext context)=> const PasswordScreen(),
    'inicio':(BuildContext context)=> const InicioScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
      builder: (context)=> const ErrorScreen(),
    );
  }
}
