import 'package:flutter/material.dart';
import 'package:route/screens/home.dart';
import 'package:route/screens/second.dart';
import 'package:route/screens/third.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new  MaterialApp(
        title: 'Navigation',

        routes: <String, WidgetBuilder>{
          '/Home': (BuildContext context) => new Home(),
          '/Second' : (BuildContext context) =>new Second(),
          '/Third' :(BuildContext context) => new Third(),

        },
      home: new Home(),
    );
  }

}
