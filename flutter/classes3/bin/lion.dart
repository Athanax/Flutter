import 'feline.dart';

class lion extends feline{
  void roar() => print('roar');

  @override
  void test(){
    print('testing in lion');
//    assert(hasClass());
//    assert(hasBackBone());
//    assert(hasHair());
    super.test();
  }
}