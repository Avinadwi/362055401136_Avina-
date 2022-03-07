import 'package:flutter/material.dart';
import 'package:project_uts/routes.dart';
import 'package:project_uts/screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
