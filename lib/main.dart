import 'package:flutter/material.dart';
import 'package:helloflutter/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final appTitle = "NGUIRANE DEV";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      darkTheme: ThemeData(primarySwatch: Colors.red),
      color: Colors.amberAccent,
      debugShowCheckedModeBanner: false,
      home: HomePage(title: appTitle)
    );
  }
}
