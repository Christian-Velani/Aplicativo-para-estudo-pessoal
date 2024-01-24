// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:study_korean/meus_widgets.dart';

class UnidadePage extends StatelessWidget {
  late String titulo;

  UnidadePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    if (args.containsKey('titulo')) {
      titulo = args['titulo'] as String;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text("Unidade X"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerGrande(
              mediaQueryData.size.height / 2,
              mediaQueryData.size.width,
              "Palavras",
              true,
              false,
            ),
            ContainerGrande(mediaQueryData.size.height / 2,
                mediaQueryData.size.width, "Frases", true, false),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/EscolherPratica",
                    arguments: {"titulo": titulo});
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(mediaQueryData.size.width / 3, 50),
                backgroundColor: Colors.green,
              ),
              child: const Text("Praticar"),
            )
          ],
        ),
      ),
    );
  }
}
