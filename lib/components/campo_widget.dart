import 'dart:ui';

import 'package:campominado/models/campo.dart';
import 'package:flutter/material.dart';

class CampoWidget extends StatelessWidget {

  final Campo campo;
  final void Function(Campo) onAbrir;
  final void Function(Campo) onAlternarMarcacao;

  CampoWidget({
    @required this.campo,
    @required this.onAbrir,
    @required this.onAlternarMarcacao,
  });

  Widget _getImage() {
    if (campo.aberto && campo.minado && campo.explodido) {
      return Image.asset('assets/images/bomba_0.jpg');
    } else {
      return Image.asset('assets/images/fechado.jpg');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onAbrir(campo),
      onLongPress: () => onAlternarMarcacao(campo),
      child: _getImage(),
    );
  }
}
