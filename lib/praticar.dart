// ignore_for_file: must_be_immutable
import "dart:math";
import "package:flutter/material.dart";
import "package:study_korean/meus_widgets.dart";

class PraticarPage extends StatelessWidget {
  late List<String> tiposAtivados;
  late String titulo;

  PraticarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    if (args.containsKey('tiposAtivados')) {
      tiposAtivados = args['tiposAtivados'] as List<String>;
    }
    if (args.containsKey("titulo")) {
      titulo = args["titulo"] as String;
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Praticando $titulo"),
      ),
      body: tiposAtivados[Random().nextInt(tiposAtivados.length)] == "Texto"
          ? const TextoPraticaPage()
          : Container(),
    );
  }
}

class TextoPraticaPage extends StatefulWidget {
  const TextoPraticaPage({super.key});

  @override
  State<TextoPraticaPage> createState() => _TextoPraticaPageState();
}

class _TextoPraticaPageState extends State<TextoPraticaPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "Traduza:",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ContainerPerguntaResposta(mediaQueryData.size.width,
              mediaQueryData.size.height, "빌리 션 직캠", "Pergunta"),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.all(10),
            child: const Text(
              "Opções:",
              style: TextStyle(fontSize: 16),
            ),
          ),
          ContainerPerguntaResposta(mediaQueryData.size.width,
              mediaQueryData.size.height, "빌리 션 직캠", "Resposta"),
          ContainerPerguntaResposta(mediaQueryData.size.width,
              mediaQueryData.size.height, "빌리 션 직캠", "Resposta"),
          ContainerPerguntaResposta(mediaQueryData.size.width,
              mediaQueryData.size.height, "빌리 션 직캠", "Resposta"),
          ContainerPerguntaResposta(mediaQueryData.size.width,
              mediaQueryData.size.height, "빌리 션 직캠", "Resposta"),
        ],
      ),
    );
  }
}
