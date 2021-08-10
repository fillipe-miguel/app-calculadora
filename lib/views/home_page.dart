import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.calculate_rounded, size: 40,),
            Text("  "),
            Text("Calculadora"),
          ],
        ),
      ),

      body: Center(
        child: ListView(
          children: [


            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 20,),
              child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset("../assets/images/image1.png")
              ),
            ),


            Center(
              child: Text("Calculadora de Áreas!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),

            SizedBox(height: 40,),

            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50,),
              child: SizedBox(
                height: 60,
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: (){
                      Navigator.of(context).pushNamed("/calculadora_quadrado");
                    },
                    child: Text("Quadrado",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                ),
              ),
            ),

            SizedBox(height: 40,),

            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50,),
              child: SizedBox(
                height: 60,
                width: 200,
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: (){
                      Navigator.of(context).pushNamed("/calculadora_triangulo");
                    },
                    child: Text("Triangulo",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
