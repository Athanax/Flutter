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
  String _text = '';

  void onChanged(String value){
    setState(() {
      _text = value;
    });
  }
  
  void onPressed(){
    
    print('The value is $_text');
  }

  void onPressed2(){
    print('this is it');
    print(_controller.text);
  }
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text field demo'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                onChanged: (String value) {
                  onChanged(value);
                },
                maxLines: 1,
                autocorrect: true,
                //obscureText: true, //passwords
                decoration: InputDecoration(
                  icon: new Icon(Icons.pages),
                  hintText: 'Write something here',
                  labelText: 'Write your name',
                ),
                
              ),
              new RaisedButton(onPressed: () {
                onPressed2();
              },
                child: new Text('Click me!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
