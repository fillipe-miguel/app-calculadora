import 'package:calculadora_quadrado/models/calculadora_triangulo_model.dart';
import 'package:flutter/material.dart';

class CalculadoraTriangulo extends StatefulWidget {
  const CalculadoraTriangulo({Key? key}) : super(key: key);

  @override
  _CalculadoraTrianguloState createState() => _CalculadoraTrianguloState();
}

class _CalculadoraTrianguloState extends State<CalculadoraTriangulo> {

  late CalcTriangulo calculator;
  late String responsePeri = "";
  late String responseArea = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    calculator = CalcTriangulo();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcular'),
      ),

      body: ListView(
        children: [
          Container(
            height: 250,
              width: 300,
              child: Image.asset("../assets/images/image3.png")
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20,),
            child: TextField(
              decoration: InputDecoration(hintText: "Digite aqui a base do triângulo em cm:"),
              onChanged: (text){
                setState(() {
                  calculator.base = double.tryParse(text);
                });
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20,),
            child: TextField(
              decoration: InputDecoration(hintText: "Digite aqui a altura do triângulo em cm:"),
              onChanged: (text){
                setState(() {
                  calculator.altura = double.tryParse(text);
                });
              },
            ),
          ),

          Center(
            child: Text("A área do triângulo é: $responseArea",style: TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.italic,
            ),),
          ),

          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50,),
            child: Container(
              height: 60,
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  onPressed: (){
                    setState(() {
                      responseArea = calculator.toStringArea();
                    });
                  },
                  child: Text("Calcular Área!",
                    style: TextStyle(color: Colors.white),
                  )
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20,),
            child: TextField(
              decoration: InputDecoration(hintText: "Digite aqui o lado a do triângulo em cm:"),
              onChanged: (text){
                setState(() {
                  calculator.a = double.tryParse(text);
                });
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20,),
            child: TextField(
              decoration: InputDecoration(hintText: "Digite aqui o lado b do triângulo em cm:"),
              onChanged: (text){
                setState(() {
                  calculator.b = double.tryParse(text);
                });
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20,),
            child: TextField(
              decoration: InputDecoration(hintText: "Digite aqui o lado c do triângulo em cm:"),
              onChanged: (text){
                setState(() {
                  calculator.c = double.tryParse(text);
                });
              },
            ),
          ),

          Center(
            child: Text("O perimêtro do triângulo é: $responsePeri",style: TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.italic,
            ),),
          ),

          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50,bottom: 50,),
            child: SizedBox(
              height: 60,
              width: 80,
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  onPressed: (){
                    setState(() {
                      responsePeri = calculator.toStringPerimeter();
                    });
                  },
                  child: Text("Calcular Perímetro!",
                    style: TextStyle(color: Colors.white),
                  )
              ),
            ),
          )

        ], //children column
      ),
    );
  }
}