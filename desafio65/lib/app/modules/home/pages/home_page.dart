import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });
  final nome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sistema de notas - Tela Inicial')),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: Column(
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/desafio65');
                    },
                    icon: const Icon(Icons.play_arrow_outlined),
                    label: const Text("Ir para cálculo da média")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
