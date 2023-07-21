import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta({
    super.key, 
    required this.texto, 
    required this.quandoSelecionado
  });

  final String texto;
  final void Function() quandoSelecionado;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: quandoSelecionado, 
        child: Text(texto)
      ),
    );
  }
}