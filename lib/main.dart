import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Authentication/home/custoum.dart';
import 'package:flutter_application_1/screens/Authentication/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: CustomBottomTabBar(),
    );
  }
}
