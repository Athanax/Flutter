import 'dart:convert';
import 'dart:io';

void list(String path){
  try{
    Directory root = new Directory(path);
    if(root.existsSync()){
      for(FileSystemEntity f in root.listSync()){
        print(f.path);
      }
    }
  }
  catch(e){
    print(e.toString());
  }


}

bool writeFile(String file, String data, FileMode mode){
  try{
    File f = new File(file);
    RandomAccessFile rf = f.openSync(mode: mode);
    rf.writeStringSync(data);
    rf.flushSync();
    rf.closeSync();

    return true;
  }
  catch(e){
    print(e.toString());
    return false;
  }
}

String readFile(String file){
  try{
    File f =new File(file);
    return f.readAsStringSync();
  }
  catch(e){
    print(e.toString());
  }

}

List<String> readLines(String file){
  File f = new File(file);
  return f.readAsLinesSync();
}

bool writeJson(String file){
 Map<String, int> map = new Map<String , int>() ;
 map.putIfAbsent('Athanas', ()=>132);
 map.putIfAbsent('wambua', ()=>32);

 String data = json.encode(map);
 
 return writeFile(file, data, FileMode.WRITE);
}

void readJson(String file){
  String data = readFile(file);
  if(data.isEmpty){
    print('File is empty');
    return;
  }
  try{
    Map <String, int> people = new Map<String, int>();

    people.forEach((key, value){
      print('$key is $value years');
    });
  }
  catch(e){
    print('Error:'+e.toString());
  }


}

void main() {
//  print('Hello, World!');
  String path ='/home/wambua/flutter';
  String textFile ='/home/wambua/flutter/test.txt';
  String jsonFile ='/home/wambua/flutter/json.txt';

//  list(path);

  if(writeFile(textFile, 'Hello world \n', FileMode.WRITE)){
    print(readFile(textFile));

    List<String> list = readLines(textFile);
    print(list.length);
  }

  if(writeJson(jsonFile)){
    print('file writted');
    readJson(jsonFile);
  };
}
