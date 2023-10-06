void main() {
  print('Hola');
  var dum = theclass();
  dum.spell('lol'); //function calling

  print(dum.jodo(5, 7));
}

class theclass {
  // default constructor
  theclass() {
    print("myclass obj"); //init block
  }
  void spell(naam) {
    //declaration
    print(naam); //definatiom
  }

  int jodo(a, b) {
    int sum = a + b;
    return sum;
  }
}
