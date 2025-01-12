import 'package:flutter/material.dart';

class EscogerMinutos extends StatefulWidget {
  final void Function(int) seleccionDeTiempo;
  const EscogerMinutos({required this.seleccionDeTiempo, super.key});

  @override
  State<EscogerMinutos> createState() => _EscogerMinutosState();
}

class _EscogerMinutosState extends State<EscogerMinutos> {
  var minutosActuales = 60.0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Selecciona los minutos'),
          Text('${minutosActuales.toInt()} minutos'),
          Slider(
            min: 1,
            max: 120,
            value: minutosActuales,
            onChanged: (nuevoValor) {
              setState(() {
                minutosActuales = nuevoValor;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              print('Se llamo escoger minutos ${minutosActuales.toInt()}');
              widget.seleccionDeTiempo(minutosActuales.toInt());
              Navigator.pop(context);
            },
            child: Text('Iniciar'),
          )
        ],
      ),
    );
  }
}
