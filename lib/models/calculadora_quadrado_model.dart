class CalcQuadrado{
  double? side;

  bool isNull() => (this.side == null);

  double? perimeter(){
    if(!isNull())
      return (this.side! * 4);
  }

  double? area(){
    if(!isNull())
      return (this.side! * this.side!);
  }


  String toStringPerimeter(){
    return "${this.perimeter()} cm";
  }

  String toStringArea(){
    return "${this.area()} cm";
  }


  // String toString(){
  //   return
  //     "\r\n Lado do quadrado: ${this.side}"+
  //         "\r\n Perimetro do quadrado: ${this.perimeter()}"+
  //         "\r\n Area do quadrado: ${this.area()}";
  // }

}