import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State <MyApp>{
  String _title = 'App Bar Demo';
  String _myState = 'No State';

  void _pressed(String message){
    //correct
    setState(() {
      _myState = message;
    });
    //wrong
    //_myState = message;
    print(_myState);
  }

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: _title,
      home: new Scaffold(
        appBar: new AppBar(
          title:  new Text(_title),
          actions: <Widget>[
            new Text('athanas'),
            new IconButton(icon: new Icon(Icons.add_alert), onPressed: () {_pressed('button pressed');},),
            new IconButton(icon: new Icon(Icons.print), onPressed: () {_pressed('Print pressed');},),
            new IconButton(icon: new Icon(Icons.pregnant_woman), onPressed: () {_pressed('Pregnant woman');},),
            new RaisedButton(child: new Text('Button'),onPressed: () {_pressed('SUPER BUTTON');},),
          ],
        ),
        body: new Container(
          padding: const EdgeInsets.all(32.0),
          child: new Center(
            child: new Text(_myState),
          ),
        )
      ),
    );
  }
}
