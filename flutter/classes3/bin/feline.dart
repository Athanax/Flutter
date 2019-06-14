import 'mammal.dart';

class feline extends mammal{
  bool hasClass() => true;

  void test(){
    print('testing in feline');
    assert(hasHair());
    assert(hasBackBone());
  }
}