import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  const Questao({super.key, required this.texto});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 26), textAlign: TextAlign.center,
      ),
    );
  }
}