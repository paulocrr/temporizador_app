import 'package:flutter/material.dart';
import 'package:temporizador_app/pagina_general.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(fontSize: 28, color: Colors.black),
          centerTitle: false,
        ),
      ),
      home: PaginaGeneral(),
    );
  }
}
