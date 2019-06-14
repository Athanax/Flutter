import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget{
  const Login({
    Key key,
    @required this.onSubmit,
  }):super(key:key);

  final VoidCallback onSubmit;
  static final TextEditingController _user = new TextEditingController();
  static final TextEditingController _pass = new TextEditingController();

  String get username => _user.text;
  String get password => _pass.text;

  @override
  Widget build(BuildContext context){
    return new Column(
      children: <Widget>[
        new TextField(controller: _user, decoration: new InputDecoration(hintText: 'Enter username'),),
        new TextField(controller: _pass, decoration: new InputDecoration(hintText: 'Enter password'),obscureText: true,),
        new RaisedButton(child: new Text('Submit'), onPressed: onSubmit,),
      ],
    );
  }

}