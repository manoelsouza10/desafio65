import 'package:flutter/material.dart';

import 'app/app_widget.dart';

void main() {
  runApp(const MyApp());
}

// Uma escola necessita de um sistema para se adequar ao padrao americano de
// atribuição de notas
// Baseado nisso, crie um aplicativo que tenha as seguintes caracterìsticas:
// Ler 4 notas de um aluno e calcular a média
// Após calcular a média, deve atribuir as seguintes classificações
// - Maior que 9,0   = A
// - Entre 9,0 e 8,0 = B
// - Entre 8,0 e 6,0 = C
// - Entre 6,0 e 4,0 = D
// - Entre 4,0 e 2.0 = E
// - Entre 2,0 e 0,0 = F
// Ao Final, o programa deve dizer a classificação do Aluno, e considerando
// apenas C ou acima como aprovados, dizer se o aluno foi aprovado e caso seja
// reprovado dizer quantos pontos faltaram para a aprovação

