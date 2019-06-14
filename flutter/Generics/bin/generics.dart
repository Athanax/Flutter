import 'stray.dart';
import 'trainer.dart';

void log<T>(T value){
  print(value);
}
T add<T extends num>(T value){
  return value+1;
}
void main() {
  print('Hello, World!');
  print(99999);
//  print(add('r'));

  stray fido = new stray();
  trainer<stray> bob = new trainer();
  bob.add(fido);
  bob.train();
  bob.remove(fido);
}

