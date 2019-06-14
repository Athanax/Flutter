import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  MyAppState createState()=>new MyAppState();
}

class MyAppState extends State<MyApp>{

  bool _selected = false;

  void onChanged(bool value){
    setState(() {
      _selected = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Switch demo'),
      ),
      body: new Container(
        padding: EdgeInsets.all(30.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Switch(value: _selected, onChanged: (bool value){onChanged(value);}),
              new SwitchListTile(
                title: new Text('Click me!'),
                  secondary: new Icon(Icons.home),
                  activeColor: Colors.red,
                  value: _selected, 
                  onChanged: (bool value){onChanged(value);}
                  
                  )
            ],
          ),
        ),
      ),
    );
  }
}