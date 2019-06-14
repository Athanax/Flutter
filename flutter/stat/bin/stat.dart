import 'counter.dart';

void main() {
  counter.printCount();
  counter.increase();
  counter.increase();
  counter.printCount();

  counter obj = new counter();
  obj.addTen();
  print(obj.count);
  obj.count = 5;
  print(obj.count);
  obj = null;

  print('Obj set to null');
  counter.printCount();
}
