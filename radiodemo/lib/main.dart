import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      home: new MyApp(),
    )
  );
}

class MyApp extends StatefulWidget{
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp>{

  int _selected = 0;

  void onChange(int value){
    setState(() {
      _selected = value;
    });
  }

  List<Widget> makeRadios(){
    List<Widget> list = new List<Widget>();
      for(int i = 0; i<3; i++ ){
        list.add(
            new Row(
              children: <Widget>[
                new Text('Radio $i'),
                new Radio(value: i, groupValue: _selected, onChanged: (int value) {onChange(value);})
              ],
            )
        );
      }

      for(int i = 0; i<3; i++){
        list.add(
          new RadioListTile(value: i,
              groupValue: _selected,
              title: new Text('Radio $i'),
              onChanged: (int value) {onChange(value);},
              activeColor: Colors.red,
              secondary: new Icon(Icons.data_usage),
              subtitle: new Text('Subtitle here'),
          ));
      }
    return list;
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Radio demo'),
        actions: <Widget>[

          new Icon(Icons.menu),        ],
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: makeRadios(),
          ),
        ),
      ),
    );
  }
}