import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Myapp(homePageTitle: 'Proyecto #2'),
    );
  }
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key, required this.homePageTitle}) : super(key: key);

  final String homePageTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(homePageTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _build(),
          ],
        ),
      ),
    );
  }

  Widget _build() {
    final int filas = 4;
    final int columnas = 4;

    List<Widget> boardRows = [];

    for (int i = 0; i < filas; i++) {
      List<Widget> filasChildren = [];

      for (int j = 0; j < columnas; j++) {
        Color color = (i + j) % 2 == 0 ? Colors.blue : Colors.red;

        filasChildren.add(
          Expanded(
            child: Container(
              color: color,
              height: 139.0,
              width: 100.0,
              child: Center(
                child: Text(
                  '',
                  style: TextStyle(
                    color: color == Colors.blue ? Colors.red : Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        );
      }

      boardRows.add(
        Row(
          children: filasChildren,
        ),
      );
    }

    return Column(
      children: boardRows,
    );
  }
}
