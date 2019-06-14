

void main() {
  print('Hello, World!');
  print('athanas');

  num age = 12;

  age +=12;

  print('The age is  $age ' + age.toString() + "  "  + age.toString() );

  String name = 'meru ';
  name += 'my kittens';
  print(name.substring(0,8));

  name = name.replaceAll('t', 'z');

  print(name);

  String book = "My world's issues in a day";

  String book2 = 'My world\'s issues in \na day';

  print(book);

  print(book2);

  String names = "james,wambua,musyoka,maurice";

  assert(names.contains('wambua'));

  List<String> list = names.split(',');

  print(list);

  print(list.elementAt(2));
  print(list[2]);

  list.add('bob');

  list.add('athanas');

  list.insert(2, 'caman');

  print(list);
  print(list.indexOf('musyoka'));


  list.forEach((v){
    print(v);
  });

  Map<String, int> ages = {
    'athanas':22,
    'brian' :24,
    'musyoka':63,
  };

  print(ages.keys);

  print(ages.values);

  print(ages);

  print(ages['brian']);

  print(ages.values.elementAt(1));

  ages['marc']= 50;

  print(ages['marc']);


  ages.forEach((k,v){
    print('$k is $v years old');
  });
  
}
