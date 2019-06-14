import 'dart:convert';

void main() {
  print('Hello, World!');
  Map<String, int > map = new Map<String , int >();

  map.putIfAbsent('Athanas',() =>23);
  map.putIfAbsent('Wambua',() =>23);

  print(map);
  String enc = json.encode(map);
  print(enc);

  try{
    Map<String, int> people = json.decode(enc);

    print(people);
    people.forEach((key, value){
      print('$key is $value years old');
    });
  }
  catch(e){
    print('Error:'+ e.toString());
  }
  finally{
    print('done')  ;
  }



}
