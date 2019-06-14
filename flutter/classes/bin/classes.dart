import 'house.dart';

void test(){
  house myHouse = new house(5,2);
  //  myHouse.length=34;
  //  myHouse.width=11;
  print(myHouse.length.toString()+' '+myHouse.width.toString());
  myHouse.dispose();

}
void main() {
  print('Hello, World!');
  test();

}
