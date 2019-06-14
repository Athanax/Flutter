import '../folder/Class1.dart' as Class;

import 'cat.dart';
import 'dog.dart';
import 'house.dart';

void main() {
  print('Hello, World!');

  cat fluffy = new cat();

  dog shiru = new dog();

  fluffy.speak();

  shiru.speak();

  print(shiru.color());

  print(fluffy.classOut());

  house house1 = new house();
  house house2 = new house();
  house house3 = new house();

  house1.width = 25;
  house1.length = 20;
  house1.color = 'red';
  house2.color='blue';
  house3.color='orange';


  //This is an inline function
  print(house1.footage) ;

  house1.years_old = 39;

  print(house1.years_old);

  List<house> homes = new List<house>();
  homes.add(house1);
  homes.add(house2);
  homes.add(house3);
  homes.forEach((value){

    print(value.color);
  });

//  Class.speak('barking');
//  var a = Class.calculate();
//  print(a);

}


