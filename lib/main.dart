import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      "texto": "Qual o personagem favorito da Marvel ?",
      "respostas": [
        {"texto": "Homem-Aranha", "valor": 5}, 
        {"texto": "Capitão-América", "valor": 3}, 
        {"texto": "Hulk", "valor": 7}, 
        {"texto": "Thor", "valor": 4}, 
        {"texto": "Dr. Estranho", "valor": 8}
      ],
    },
    {
      "texto": "Qual o personagem favorito da DC Comics ?",
      "respostas": [
        {"texto": "Batman", "valor": 5}, 
        {"texto": "Super-Homem", "valor": 3}, 
        {"texto": "Lanterna-Verde", "valor": 7}, 
        {"texto": "Mulher-Maravilha", "valor": 4}, 
        {"texto": "Flash", "valor": 8}
      ],
    },
    {
      "texto": "Qual o seu pokemon favorito ?",
      "respostas": [
        {"texto": "Onix", "valor": 5}, 
        {"texto": "Pikachu", "valor": 3}, 
        {"texto": "Charmander", "valor": 7}, 
        {"texto": "Bulbasaur", "valor": 4}, 
        {"texto": "Gengar", "valor": 8}
      ]
    }
  ];

  void _responder (int pontuacao) {
    if(temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    print(_pontuacaoTotal);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
        ),
        body: temPerguntaSelecionada
        ? Questionario(
            perguntas: _perguntas, 
            perguntaSelecionada: _perguntaSelecionada, 
            quandoResponder: _responder
          )
        : Resultado(pontuacao: _pontuacaoTotal)
      ),
    );
  }
}