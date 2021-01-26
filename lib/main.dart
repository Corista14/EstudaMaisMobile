import 'package:estuda_mais/views/home.dart';
import 'package:estuda_mais/views/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Montserrat'
    ),
    routes: {
      '/':  (context) => Home(),
      '/login': (context) => Login()
    },
  ));
}

