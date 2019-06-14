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
  String _text = '';
  int counter = 0;

  final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey<ScaffoldState>();

  void _onChanged(String value){
    setState(() {
      _text = value;
      print(_text);
    });
  }

  void count(int a){
    setState(() {
      a++;
      print(a);
    });
  }

  void _showSnackBar(String value){
    if(value.isEmpty){
      print('Value is empty');
      return;
    }
    _scaffoldstate.currentState.showSnackBar(new SnackBar(
        content: new Text(value),),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Snackback demo'),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(onChanged: (String value) {_onChanged(value);},),
              new RaisedButton(onPressed: () {
                _showSnackBar('athanas');
              },
                child: new Text('Snack bar'),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
