import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp()
  ));
}

class MyApp extends StatefulWidget{
  MyAppState createState() => new MyAppState();
}

enum myDialogAction {
  yes,
  no,
  maybe
}

class MyAppState extends State<MyApp>{

  String _title ='';

  void _onChange(String value){
    setState(() {
      _title = value;
    });
  }

  void dialogAction(myDialogAction value){
    print('You sellected $value');
    Navigator.pop(context);
  }
  
  
  void _shoAlert(String value){
    if(value.isEmpty) return;

    AlertDialog dialog = new AlertDialog(
      content: new Text(value,
        style: new TextStyle(fontSize: 30.0),
      ),

      actions: <Widget>[
        new FlatButton(onPressed: () {dialogAction(myDialogAction.yes);}, child: new Text('Yes')),
        new FlatButton(onPressed: () {dialogAction(myDialogAction.no);}, child: new Text('No')),
        new FlatButton(onPressed: () {dialogAction(myDialogAction.maybe);}, child: new Text('Maybe')),
      ],
    );
    
    showDialog(context: context, child: dialog);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Alert dialog demo'),
      ),

      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(onChanged: (String value) {_onChange(value);},),
              new RaisedButton(onPressed: () {_shoAlert(_title);},
                child: new Text('Alert dialog'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}