import 'package:calculadora_quadrado/models/calculadora_quadrado_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculadoraQuadrado extends StatefulWidget {
  @override
  _CalculadoraQuadradoState createState() => _CalculadoraQuadradoState();
}

class _CalculadoraQuadradoState extends State<CalculadoraQuadrado> {

  late CalcQuadrado calculator;
  late String responsePeri = "";
  late String responseArea = "";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    calculator = CalcQuadrado();
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
              child: Image.asset("../assets/images/image2.png")),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(hintText: "Digite aqui o lado do quadrado em cm:"),
              onChanged: (text){
                setState(() {
                  calculator.side = double.tryParse(text);
                });
              },
            ),
          ),

          Center(
            child: Text("O perímetro do quadrado é: $responsePeri",style: TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.italic,
            ),),
          ),

          SizedBox(height: 10,),

          Center(
            child: Text("A área do quadrado é: $responseArea",style: TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.italic,
            ),),
          ),

          SizedBox(height: 30,),

          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50,),
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
                      responseArea = calculator.toStringArea();
                });
              },
                  child: Text("Calcular!",
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
