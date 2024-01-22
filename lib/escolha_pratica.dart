// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";
import "package:study_korean/meus_widgets.dart";

class EscolherPraticaPage extends StatefulWidget {
  const EscolherPraticaPage({super.key});

  @override
  State<EscolherPraticaPage> createState() => _EscolherPraticaPageState();
}

class _EscolherPraticaPageState extends State<EscolherPraticaPage> {
  List<String> tiposPraticas = [];

  void AtualizarListaTipo(String tipo) {
    if (!tiposPraticas.contains(tipo)) {
      tiposPraticas.add(tipo);
    } else {
      tiposPraticas.remove(tipo);
    }
  }

  void Alerta() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Erro"),
          content: const Text("Escolha pelo menos um tipo antes de continuar"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Fechar"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Escolha os tipos de Prática"),
      ),
      body: Column(
        children: [
          MeuCheckBoxListTile(AtualizarListaTipo, "Tipo 2"),
          MeuCheckBoxListTile(AtualizarListaTipo, "Tipo 3"),
          MeuCheckBoxListTile(AtualizarListaTipo, "Tipo 1"),
          MeuCheckBoxListTile(AtualizarListaTipo, "Tipo 4"),
          MeuCheckBoxListTile(AtualizarListaTipo, "Tipo 5"),
          Center(
            child: ElevatedButton(
              onPressed: () {
                if (tiposPraticas.isNotEmpty) {
                } else {
                  Alerta();
                }
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(mediaQueryData.size.width / 3, 50),
                backgroundColor: Colors.green,
              ),
              child: const Text("Praticar"),
            ),
          )
        ],
      ),
    );
  }
}
