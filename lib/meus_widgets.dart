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
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("/Unidade");
      },
      child: Container(
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
      ),
    );
  }
}

class ContainerGrande extends StatelessWidget {
  double larguraAparelho;
  double comprimentoAparelho;
  String titulo;
  bool interativo;

  ContainerGrande(this.comprimentoAparelho, this.larguraAparelho, this.titulo,
      this.interativo,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: interativo
          ? GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushNamed("/EditarUnidade", arguments: {"tipo": titulo});
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(15), // Bordas arredondadas
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.9),
                      offset: const Offset(0, 5),
                      blurRadius: 10,
                    ),
                  ],
                ),
                width: larguraAparelho - 20,
                height: comprimentoAparelho,
                child: Column(
                  children: [
                    Text(
                      titulo,
                      style: textoMedioBold,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: (larguraAparelho - 20) * 0.35,
                          child: const Center(
                            child: Text(
                              "Coreano",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: (larguraAparelho - 20) * 0.35,
                          child: const Center(
                            child: Text(
                              "Português",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: (larguraAparelho - 20) * 0.30,
                          child: const Text(
                            "Dificuldade",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: (larguraAparelho - 20),
                      height: (comprimentoAparelho - 100) / 2,
                      child: ListView(
                        children: [
                          Linha("ㅁㅇㄴㄻㄴㅇㄹ", "Teste", "facil", larguraAparelho),
                          Linha("ㅁㅇㄴㄻㄴㅇㄹ", "Teste", "medio", larguraAparelho),
                          Linha("ㅁㅇㄴㄻㄴㅇㄹ", "Teste", "dificil", larguraAparelho)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          : Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15), // Bordas arredondadas
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.9),
                    offset: const Offset(0, 5),
                    blurRadius: 10,
                  ),
                ],
              ),
              width: larguraAparelho - 20,
              height: comprimentoAparelho,
              child: Column(
                children: [
                  Text(
                    titulo,
                    style: textoMedioBold,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: (larguraAparelho - 20) * 0.35,
                        child: const Center(
                          child: Text(
                            "Coreano",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: (larguraAparelho - 20) * 0.35,
                        child: const Center(
                          child: Text(
                            "Português",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: (larguraAparelho - 20) * 0.30,
                        child: const Text(
                          "Dificuldade",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: (larguraAparelho - 20),
                    height: (comprimentoAparelho - 100) / 2,
                    child: ListView(
                      children: [
                        Linha("ㅁㅇㄴㄻㄴㅇㄹ", "Teste", "facil", larguraAparelho),
                        Linha("ㅁㅇㄴㄻㄴㅇㄹ", "Teste", "medio", larguraAparelho),
                        Linha("ㅁㅇㄴㄻㄴㅇㄹ", "Teste", "dificil", larguraAparelho)
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}

class Linha extends StatelessWidget {
  String coreano;
  String portugues;
  String dificuldade;
  double larguraAparelho;

  Linha(this.coreano, this.portugues, this.dificuldade, this.larguraAparelho,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: (larguraAparelho - 20) * 0.35,
            child: Center(child: Text(coreano))),
        SizedBox(
            width: (larguraAparelho - 20) * 0.35,
            child: Center(child: Text(portugues))),
        Container(
          width: (larguraAparelho - 20) * 0.30,
          alignment: Alignment.center,
          child: Center(
            child: Container(
              width: 7,
              height: 7,
              color: dificuldade == "facil"
                  ? Colors.green
                  : dificuldade == "medio"
                      ? Colors.yellow
                      : Colors.red,
            ),
          ),
        )
      ],
    );
  }
}
