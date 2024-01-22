import 'package:flutter/material.dart';
import 'meus_widgets.dart';

class EditarUnidadePage extends StatefulWidget {
  const EditarUnidadePage({super.key});

  @override
  State<EditarUnidadePage> createState() => _EditarUnidadePageState();
}

class _EditarUnidadePageState extends State<EditarUnidadePage> {
  final portugues = TextEditingController();
  final coreano = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void _showAddElementPopup() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Adicionar Elemento"),
          content: SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      return (value != null && value.isNotEmpty)
                          ? null
                          : 'Insira algo';
                    },
                    controller: portugues,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Português",
                    ),
                    style: const TextStyle(color: Colors.black),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                  const Spacer(),
                  TextFormField(
                    validator: (value) {
                      return (value != null && (value.isNotEmpty))
                          ? null
                          : 'Insira algo';
                    },
                    controller: coreano,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Coreano",
                    ),
                    style: const TextStyle(color: Colors.black),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pop(context);
                }
              },
              child: const Text("Adicionar"),
            ),
          ],
        );
      },
    );
  }

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
                mediaQueryData.size.width, tipo, false, false),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: _showAddElementPopup,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "Adicionar Elemento",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/ExcluirItens",
                          arguments: {"tipo": tipo});
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text(
                      "Remover Elemento",
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
