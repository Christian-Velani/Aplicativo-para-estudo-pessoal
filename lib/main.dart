import 'package:flutter/material.dart';
import 'package:study_korean/edicao_unidade.dart';
import 'unidade.dart';

import 'initial_page.dart';

void main() {
  runApp(const StudyKoreanAPP());
}

class StudyKoreanAPP extends StatelessWidget {
  const StudyKoreanAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/TelaInicial",
      routes: {
        "/TelaInicial": (context) => const TelaInicial(),
        "/Unidade": (context) => const UnidadePage(),
        "/EditarUnidade": (context) => const EditarUnidadePage()
      },
    );
  }
}
