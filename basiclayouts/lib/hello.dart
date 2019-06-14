import 'package:flutter/material.dart';

class hello extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Container(
      padding: const EdgeInsets.all(2),
      child: new Column(
        children: <Widget>[
          new Text('Hello'),
          new Text('World'),
          new Text('!!!!!'),
        ],
      ),

    );
  }
}