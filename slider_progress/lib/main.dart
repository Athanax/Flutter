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
  double _value = 0.0;

  void _onChanged(double value){
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Slider demo'),
        actions: <Widget>[
          new Icon(Icons.menu),
        ],
      ),
      body: new Container(
        padding: EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('The slider value is ${_value.round()}'),
              new Slider(
                  value: _value,
                  min: 0.0,
                  max: 100.0,
                  onChanged: (double value) {_onChanged(value);}
                  ),
              new Text('The progress value is ${_value.round()}'),

              new LinearProgressIndicator(
                value: _value*.01,
              )
            ],
          ),
        ),
      ),
    );
  }
}