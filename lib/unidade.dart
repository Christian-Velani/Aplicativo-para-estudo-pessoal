import 'package:flutter/material.dart';
import 'package:study_korean/meus_widgets.dart';

class UnidadePage extends StatelessWidget {
  const UnidadePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
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
              onPressed: () {},
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
