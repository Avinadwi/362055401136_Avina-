import 'package:flutter/material.dart';
import 'package:project_uts/screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/profil':
        return MaterialPageRoute(builder: (_) => LoginPage());
      // return MaterialPageRoute(builder: (_) => AboutPage(args));
      case '/porto':
        return MaterialPageRoute(builder: (_) => ProfilPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}