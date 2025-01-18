import 'package:flutter/material.dart';

class ContadorDeTiempo extends StatelessWidget {
  final int segundosActuales;
  final int segundosSeleccionados;
  final VoidCallback volverAIniciar;
  const ContadorDeTiempo({
    required this.segundosActuales,
    required this.segundosSeleccionados,
    required this.volverAIniciar,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var imagenMostrar = 'assets/images/small_chicken.png';
    var mitadDeTiempo = segundosSeleccionados / 2;

    if (segundosActuales == 0) {
      imagenMostrar = 'assets/images/done_chicken.png';
    } else if (segundosActuales < mitadDeTiempo) {
      imagenMostrar = 'assets/images/adult_chicken.png';
    }

    final minutos = segundosActuales ~/ 60;
    final segundos = segundosActuales % 60;
    final segundosConFormato = segundos.toString().padLeft(2, '0');

    return Scaffold(
      appBar: AppBar(
        title: Text('Tiempo de concentración'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagenMostrar),
            Text(
              'Tiempo de Focus',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '$minutos:$segundosConFormato',
              style: TextStyle(fontSize: 32),
            ),
            if (segundosActuales == 0)
              ElevatedButton(
                onPressed: volverAIniciar,
                child: Text('Volver al inicio'),
              ),
          ],
        ),
      ),
    );
  }
}
