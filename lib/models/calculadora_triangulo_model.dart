class CalcTriangulo{
  double? altura;
  double? base;

  double? a;
  double? b;
  double? c;

  // bool isNullA() => (this.altura == null && this.base == null);
  bool isNullP() => (this.a == null && this.b == null && this.c == null);

  double? perimeter(){
    if(!isNullP()) {
      return (this.a! + this.b! + this.c!);
    }
  }

  double? area(){
    // if(isNullA()){
      return (this.base! * this.altura!) /2;
    // }
  }

  String toStringPerimeter(){
    return "${this.perimeter()} cm";
  }

  String toStringArea(){
    return "${this.area()} cm";
  }
}