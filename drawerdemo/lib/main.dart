import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  MyAppState createState()=> new MyAppState();
}

class MyAppState extends State<MyApp>{
  
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('New App'),
      ),
      drawer: new Drawer(
        child: new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Hello drawer'),
              new RaisedButton(
                color: Colors.red,
                child: new Text('Close'),
                onPressed: () {Navigator.pop(context);}
              )
            ],
          ),
        ),
      ),
      body: new Container(
        padding: EdgeInsets.all(10),
        child: new Center(
          child: Text('Widgets here'),
        ),
      ),
    );
  }
}