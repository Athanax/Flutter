void sayHello(){
  for(int a =0; a<5; a++){

    print('Hello, World! ');

  }

}

void annoy(int times){
  for(int a =1; a<=times; a++){
    print('$a of $times ...bla');
  }
}

void reallyAnnoy(int times){

  for(int a =1; a<=times; a++){
    annoy(times);
  }
}

String concat(String first,  [String second = 'is not good at call of duty']){
  return first+' '+second;
}
void main() {
//  sayHello();
//  annoy(10);

  print(concat('Athanas'));
}
