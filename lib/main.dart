import 'package:flutter/material.dart';
import 'package:tokoonline/launcher.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      primaryColor:const Color(0xFF880E4F),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LauncherPage(),
    );
  }
}

