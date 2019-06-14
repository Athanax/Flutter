import 'colorError.dart';

void catchError(){

  print('Starting...');

  try {
    print('trying...');
    String test = 'a';
    print('test : $test');
  }

  catch(e) {
    print('Error: '+e.toString());
  }
  finally{
    print('done');
  }

}

void raiseError(int a, int b){
  try{
    if(a!=b) throw 'a not equal to b';
  }
  catch(e){
    print('Error : '+e.toString());
    a=b;
  }
  finally{
    print('Complete');
  }
}

void internal(){
  throw 'Nope';
}
void outer(){
  try{
    internal();
  }
  catch(e){
    print('Program failed');
  }
}
enum Color {black, white, brown}
void cats(Color color){
  try{
    if(color != Color.black) throw new ColorError('must be black');
    print('Pet the cat');
    cat a;
    print('Cat : $cat');
  }
  //i late added the on keyword to catch the error incase it exists
  on ColorError catch(e){
    print('You selected the wrong color');
  }
  catch(e){
    print('Unknown Error:'+e.toString());
  }
  finally{
    print('Done');
  }
}

void main() {
//  print('Hello, World!');
//  catchError();
//  raiseError(1, 2);
//  outer();
  cats(Color.brown);
}
