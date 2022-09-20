import 'package:flutter/material.dart';

class Desafio65Page extends StatefulWidget {
  const Desafio65Page({super.key});
  @override
  State<Desafio65Page> createState() => _Desafio65PageState();
}

class _Desafio65PageState extends State<Desafio65Page> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();
  double media = 0;
  double sum = 0;
  String statusAluno = "";
  double pontosNecessarios = 0;
  String AlunoClassificacao = "";

  void resultado() {
    setState(() {
      double value1 = double.tryParse(controller1.text) ?? 0;
      double value2 = double.tryParse(controller2.text) ?? 0;
      double value3 = double.tryParse(controller3.text) ?? 0;
      double value4 = double.tryParse(controller4.text) ?? 0;
      sum = value1 + value2 + value3 + value4;
      media = sum / 4;
      if (media > 9) {
        AlunoClassificacao = "A";
      } else if (media < 9 && media >= 8) {
        AlunoClassificacao = "B";
      } else if (media < 8 && media >= 6) {
        AlunoClassificacao = "C";
      } else if (media < 6 && media >= 4) {
        AlunoClassificacao = "D";
      } else if (media < 4 && media >= 2) {
        AlunoClassificacao = "E";
      } else if (media < 2 && media >= 0) {
        AlunoClassificacao = "F";
      }
      if (AlunoClassificacao == "A" ||
          AlunoClassificacao == "B" ||
          AlunoClassificacao == "C") {
        statusAluno = "Aprovado";
        pontosNecessarios = 0;
      } else {
        statusAluno = "Reprovado";
        pontosNecessarios = 6 - media;
      }
    });
  }

  void clearAll() {
    setState(() {
      controller1.text = "";
      controller2.text = "";
      controller3.text = "";
      controller4.text = "";
      media = 0;
      sum = 0;
      statusAluno = "";
      pontosNecessarios = 0;
      AlunoClassificacao = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 140, 144, 146),
      appBar: AppBar(
        title: const Text(
          "Sistema de notas do Manoel",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 77, 75, 102),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Text(
            "NOTAS",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
            color: Colors.greenAccent,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  cursorColor: Colors.blue,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Digite a nota 1',
                  ),
                  controller: controller1,
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: controller2,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Digite a nota 2',
                  ),
                ),
                TextField(
                  controller: controller3,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                  decoration: const InputDecoration(
                    //icon: Icon(Icons.send),
                    border: OutlineInputBorder(),
                    hintText: 'Digite a nota 3',
                  ),
                ),
                TextField(
                  controller: controller4,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Digite a nota 4 ',
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: resultado,
                        child: const Text("Calcular média")),
                    const SizedBox(width: 20),
                    ElevatedButton(
                        onPressed: clearAll, child: const Text("Limpar Dados")),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(10.0),
                        color: Colors.green,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 300,
                              color: Colors.yellow,
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Média do aluno: ${media.toStringAsFixed(2)}",
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 300,
                              color: Colors.yellow,
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Classificação do aluno: $AlunoClassificacao",
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 300,
                              color: Colors.yellow,
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Status do Aluno: $statusAluno",
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.yellow,
                              padding: const EdgeInsets.all(10.0),
                              height: 50,
                              width: 300,
                              child: Text(
                                "Pontos necessários: $pontosNecessarios",
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
