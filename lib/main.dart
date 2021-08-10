import 'package:calculadora_quadrado/views/calculadora_quadrado_view.dart';
import 'package:calculadora_quadrado/views/calculadora_triangulo_view.dart';
import 'package:calculadora_quadrado/views/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculadora",
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/calculadora_quadrado": (context) => CalculadoraQuadrado(),
        "/calculadora_triangulo": (context) => CalculadoraTriangulo(),
      },
    );
  }
}
