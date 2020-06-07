import 'package:campominado/components/campo_widget.dart';
import 'package:campominado/components/resultado_widget.dart';
import 'package:campominado/models/campo.dart';
import 'package:flutter/material.dart';

class CampoMinadoApp extends StatelessWidget {

  void _reiniciar() {

  }

  void _abrir(Campo c) {

  }

  void _alternarMarcacao(Campo c) {

  }

  @override
  Widget build(BuildContext context) {
    Campo campo = Campo(linha: 0, coluna: 0);
    campo.abrir();

    return MaterialApp(
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: true,
          onReiniciar: _reiniciar,
        ),
        body: Container(
          child: CampoWidget(
              campo: campo,
              onAbrir: _abrir,
              onAlternarMarcacao: _alternarMarcacao
          ),
        ),
      ),
    );
  }
}
