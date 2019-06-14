import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp>{

  String _title = '';
  bool _isChecked = false;

  void onChecked(bool value){
    setState(() {
      _isChecked = value;
    });
  }

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Checkbox demo'),

      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Center(

          ),
              new Row(
                children: <Widget>[
                  new Text('Click it ->'),
                  new Checkbox(value: _isChecked, onChanged: (bool value) {onChecked(value);}),
                ],

              ) ,
              new CheckboxListTile(
                  value: _isChecked, 
                  onChanged: (bool value) {onChecked(value);},
                  title: new Text('Click me!!!'),
                  activeColor: Colors.red,
                  secondary: Icon(Icons.home),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}