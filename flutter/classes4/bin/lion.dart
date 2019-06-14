import 'feline.dart';

class lion extends feline{
  bool hasHair()=> true;
  bool hasBackBone()=>true;
  bool hasClaws()=>true;

  @override
  void speak(){
    print('roar');
  }

}