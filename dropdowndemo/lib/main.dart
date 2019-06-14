import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  _State createState() => new _State();
}

class _State extends State<MyApp>{

  String _value = '';
  List<String> _values = new List<String>();

  void iniState(){
    _values.addAll(["Athanas","Chris","Wambua","Musyoka"]);
    _value=_values.elementAt(0);
  }

  void _onChanged(String value){
    setState(() {
      _value = value;
    });
  }

  @override

  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Dropdown demo'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(30.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new DropdownButton(
                  value: _value,
                  items: _values.map((String value){

                    return new DropdownMenuItem(
                        value: value,
                        child: new Row(
                          children: <Widget>[
                            new Icon(Icons.home),
                            new Text('Person $value'),
                          ],
                        ) ,
                    );
                  }).toList(),
                  onChanged: (String value) { _onChanged(value);})
            ],
          ),
        ),
      ),
    );
  }
}