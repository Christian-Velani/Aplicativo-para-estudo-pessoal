import 'package:flutter/material.dart';
import 'package:study_korean/meus_widgets.dart';
import 'package:study_korean/styles.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Container(
          alignment: Alignment.center,
          child: const Text(
            "Estudo de Coreano",
            style: textoGrande,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: const Text(
              "Escolha uma Unidade: ",
              style: textoMedio,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Unidade("U1", mediaQueryData.size.height,
                    mediaQueryData.size.width),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.centerRight,
                child: Unidade(
                    "+", mediaQueryData.size.height, mediaQueryData.size.width),
              ),
            ],
          )
        ],
      ),
    );
  }
}
