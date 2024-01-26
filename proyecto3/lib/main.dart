import 'package:flutter/material.dart';
import 'package:proyecto3/MyHomePage.dart';
import 'package:proyecto3/MoreInfoPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto #3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const MoreInfoPage(title: 'proyecto #3'),
    );
  }
}
