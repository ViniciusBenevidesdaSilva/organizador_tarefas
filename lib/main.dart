import 'package:flutter/material.dart';
import 'package:organizador_tarefas/screens/initial_screen.dart';
import 'package:organizador_tarefas/styles/my_pallette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Organizador de Tarefas',
      theme: ThemeData(
        primarySwatch: MyPallette.create(),
      ),
      home: const InitialScreen(),
    );
  }
}



