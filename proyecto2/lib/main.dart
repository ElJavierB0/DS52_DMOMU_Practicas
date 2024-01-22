import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Computer'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Column(
        children: List.generate(
          4,
          (rowIndex) => Expanded(
            child: Row(
              children: List.generate(
                4,
                (colIndex) => Expanded(
                  child: Container(
                    color: (rowIndex + colIndex) % 2 == 0
                      ? Colors.black
                      : Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}