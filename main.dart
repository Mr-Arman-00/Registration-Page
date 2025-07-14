import 'package:flutter/material.dart';
import 'package:login_project/first_page.dart';
import 'package:login_project/second_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'first_page',
      routes: {
        'first_page': (context) => MyLogin(),
        'second_page': (context) => MyRegister(),
      },
    ),
  );
}
