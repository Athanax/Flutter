class house{
  //Private
  int _age;

  //Public
  String color = 'white';
  int width = 0;
  int length = 0;

  //Getter and Setter
  int get footage => width* length;

  int get years_old => _age;

  set years_old(int value) =>_age=value;

  void test(){
    _age = 99;
    print(_age);
  }
}