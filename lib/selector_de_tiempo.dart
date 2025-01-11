import 'package:flutter/material.dart';

class SelectorDeTiempo extends StatelessWidget {
  const SelectorDeTiempo({super.key});

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
              onPressed: () {},
              child: Text('Iniciar'),
            )
          ],
        ),
      ),
    );
  }
}
