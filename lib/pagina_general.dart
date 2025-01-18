import 'dart:async';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:temporizador_app/contador_de_tiempo.dart';
import 'package:temporizador_app/selector_de_tiempo.dart';

class PaginaGeneral extends StatefulWidget {
  const PaginaGeneral({super.key});

  @override
  State<PaginaGeneral> createState() => _PaginaGeneralState();
}

class _PaginaGeneralState extends State<PaginaGeneral> {
  int? segundosSeleccionadoUsuario;
  int? segundosTranscurridos;
  Timer? temporizador;
  @override
  Widget build(BuildContext context) {
    if (segundosSeleccionadoUsuario == null && segundosTranscurridos == null) {
      return SelectorDeTiempo(
        iniciarTiempo: (tiempoSeleccionado) {
          setState(() {
            segundosSeleccionadoUsuario = tiempoSeleccionado * 60;
            segundosTranscurridos = segundosSeleccionadoUsuario;
            temporizador = Timer.periodic(
              Duration(seconds: 1),
              (timer) {
                setState(() {
                  segundosTranscurridos = segundosTranscurridos! - 1;
                  if (segundosTranscurridos == 0) {
                    timer.cancel();
                    final dialog = AwesomeDialog(
                      context: context,
                      title: 'Se termino el tiempo',
                      customHeader: Lottie.asset(
                          'assets/animations/success-animation.json'),
                    );
                    dialog.show();
                  }
                });
              },
            );
          });
        },
      );
    } else {
      return ContadorDeTiempo(
        segundosActuales: segundosTranscurridos!,
        segundosSeleccionados: segundosSeleccionadoUsuario!,
        volverAIniciar: () {
          setState(() {
            segundosSeleccionadoUsuario = null;
            segundosTranscurridos = null;
          });
        },
      );
    }
  }
}
