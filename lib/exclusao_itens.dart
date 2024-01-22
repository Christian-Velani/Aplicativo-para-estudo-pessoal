import 'package:flutter/material.dart';
import 'meus_widgets.dart';

class ExclusaoItensPage extends StatefulWidget {
  const ExclusaoItensPage({super.key});

  @override
  State<ExclusaoItensPage> createState() => _ExclusaoItensPageState();
}

class _ExclusaoItensPageState extends State<ExclusaoItensPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    late String tipo;
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    if (args.containsKey('tipo')) {
      tipo = args['tipo'] as String;
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Editando Unidade X"),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerGrande(mediaQueryData.size.height - 100,
                mediaQueryData.size.width, tipo, false, true),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(mediaQueryData.size.width / 3, 50),
                      backgroundColor: Colors.red,
                    ),
                    child: const Text(
                      "Cancelar",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(mediaQueryData.size.width / 3, 50),
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "Confirmar",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
