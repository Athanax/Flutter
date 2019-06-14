import 'dart:async';

Future<bool> longWait(String prefix) async{
  for(int a=0; a<5;a++){
    print('$prefix $a');
  }
  return true;
}

Future testAsync() async{
  print('Startimg');
  longWait('assync');
  print('done');
}

void main() {
  testAsync();
}
