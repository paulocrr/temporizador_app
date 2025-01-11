import 'package:flutter/material.dart';
import 'package:temporizador_app/selector_de_tiempo.dart';

class PaginaGeneral extends StatefulWidget {
  const PaginaGeneral({super.key});

  @override
  State<PaginaGeneral> createState() => _PaginaGeneralState();
}

class _PaginaGeneralState extends State<PaginaGeneral> {
  @override
  Widget build(BuildContext context) {
    return SelectorDeTiempo();
  }
}
