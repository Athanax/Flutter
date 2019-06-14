import 'bird.dart';
import 'scorpion.dart';
import 'feline.dart';

class monster implements bird, scorpion, feline{
  bool hasWings()=>true;
  bool hasStinger()=>false;
  bool hasBackBone()=>true;
  bool hasHair()=>true;
  bool hasClaws()=>true;

  @override
  void speak(){
    print('shhaaamash');
  }
}