import 'package:calculator/calculator%20screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xff303234),elevation: 0),
        primarySwatch: Colors.blue,
      ),
      home: const CalculatorScreen(),
    );
  }
}

