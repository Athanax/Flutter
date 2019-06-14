import 'dog.dart';

class trainer<T extends dog>{
  List<T> _animal = new List<T>();

  void add(T value) => _animal.add(value);
  void remove(T value) => _animal.remove(value);

  void train(){
    _animal.forEach((value){
      for(int a=0; a<3; a++){
        value.speak();
      }
    });
  }
}