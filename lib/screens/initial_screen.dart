import 'package:flutter/material.dart';
import '../widgets/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text("Tarefas"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedOpacity(
          opacity: show ? 1 : 0,
          duration: const Duration(milliseconds: 800),
          child: ListView(
            children: const [
              Task(name: 'Aprender Flutter', difficulty: 5,pictureAsset: 'assets/images/flutter.png',),
              Task(name: 'Andar de Bike', difficulty: 3, pictureAsset: 'assets/images/bike.png',),
              Task(name: 'Meditar', difficulty: 4, pictureAsset: 'assets/images/meditar.jpg',),
              Task(name: 'Ler', difficulty: 3, pictureAsset: 'assets/images/ler.jpeg',),
              Task(name: 'Jogar', difficulty: 1, pictureAsset: 'assets/images/jogar.jpg',),
              SizedBox(height: 80,),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            show = !show;
          });
        },
        child: show ?
        const Icon(Icons.visibility) :
        const Icon(Icons.visibility_off),
      ),
    );
  }
}
