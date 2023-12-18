// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:study_korean/styles.dart';

class Unidade extends StatelessWidget {
  double larguraAparelho;
  double comprimentoAparelho;
  String nome;

  Unidade(this.nome, this.comprimentoAparelho, this.larguraAparelho,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: (larguraAparelho - larguraAparelho * 0.3) / 2,
      height: (larguraAparelho - larguraAparelho * 0.3) / 2,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(width: 3.0),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          nome,
          style: textoGrande,
        ),
      ),
    );
  }
}
