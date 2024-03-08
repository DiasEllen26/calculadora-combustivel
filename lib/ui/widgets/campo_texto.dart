import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final TextEditingController controlador;
  final String texto;
  final String prefixo;

  CampoTexto(this.controlador, this.texto, this.prefixo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
        controller: controlador,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: texto,
            prefixText: prefixo
        ),
      ),
    );
  }
}
