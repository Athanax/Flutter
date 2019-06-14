import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  _State createState()=>new _State();
}

class _State extends State<MyApp>{

  List<bool> _data = new List<bool>();
  @override

  void initState(){
    setState(() {
      for(int i = 0; i<10; i++){
        _data.add(false);
      }
    });
  }

  void _onChange(bool value, int index){
    setState(() {
      _data[index]=value;
    });
  }

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('List view'),
        actions: <Widget>[
          new Icon(Icons.menu),
        ],
      ),
      body: new ListView.builder(
          itemCount: _data.length,
          itemBuilder: (BuildContext context, int index){
            return new Card(
              child: new Container(
                padding: EdgeInsets.all(22.0),
                child: new Column(
                  children: <Widget>[
                    new Text('This is item number $index'),
                    new CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                        title: new Text('Click me $index'),
                        value: _data[index],
                        onChanged: (bool value) {_onChange(value, index);})
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}