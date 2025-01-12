import 'package:flutter/material.dart';
import 'package:temporizador_app/escoger_minutos.dart';

class SelectorDeTiempo extends StatelessWidget {
  final void Function(int) iniciarTiempo;
  const SelectorDeTiempo({required this.iniciarTiempo, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi pomodoro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/small_chicken.png'),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return EscogerMinutos(
                      seleccionDeTiempo: (tiempoSeleccionado) {
                        print(
                            'Se llamo selector de tiempo ${tiempoSeleccionado.toInt()}');
                        iniciarTiempo(tiempoSeleccionado);
                      },
                    );
                  },
                );
              },
              child: Text('Iniciar'),
            ),
          ],
        ),
      ),
    );
  }
}
