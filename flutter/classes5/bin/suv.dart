import 'car.dart';
import 'truck.dart';
import 'industrial.dart';

//this code explains the use of mixins
class suv extends truck with car, industrial{
  String color() => 'light green';
  int doors() => 3;
}
