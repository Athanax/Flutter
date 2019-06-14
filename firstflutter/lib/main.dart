import 'package:flutter/material.dart';

void main(){
  runApp(
    new Center(
      child: new MyApp(),

    ),
  );
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Homepage',
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Flutter'),),
        body: new Center(
          child :new RaisedButton(
            onPressed: null,
            child: new Text('Button'),
          )
        ),

      ),

    );
  }
}

