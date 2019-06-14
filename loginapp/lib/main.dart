import 'package:flutter/material.dart';
import 'package:loginapp/settings.dart';
import 'package:loginapp/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  _MyAppState createState() =>  new _MyAppState();
}

class _MyAppState extends State<MyApp>{

  String _title = 'Please Login';

  Widget  _screen;
  Login _login;
  Settings _settings;
  bool _authnticated;

  _MyAppState(){
    _login = new Login(onSubmit: (){onSubmit();});
    _settings = new Settings();
    _screen = _login;
    _authnticated = false;
}
void  onSubmit(){
    print('login with ' + _login.username+ ' '+_login.password);
    if(_login.username == 'user' && _login.password == 'password'){
      _setAuthenticated(true);
    }
}

  void _goHome(){
    print('go home');
    setState(() {
      if(_authnticated ==true){
        _screen = _settings;
      }else{
        _screen = _settings;

      }
    });
  }

  void _logout(){
    print('log out');
    _setAuthenticated(false);
//  _authnticated = false;
  }

  void _setAuthenticated(bool auth){
   setState(() {
     if(auth ==true){
      _screen = _settings;
      _title = 'Welcome';
      _authnticated=true;

     }else{
      _screen = _login;
      _title = 'Welcome';
      _authnticated=true;

     }
   });
  }

  @override
  Widget build(BuildContext context){

    return new MaterialApp(
      title: 'Login',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),

          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.home), onPressed: () {_goHome();},),
            new IconButton(icon: new Icon(Icons.exit_to_app), onPressed: () {_logout();},),
          ],

        ),
        body: _screen,
      ),
    );
  }
}