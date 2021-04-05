import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
home: new myApp(),
  ));
}
class myApp extends StatefulWidget{
  @override
  _State createState()=>new _State();
}
class _State extends State<myApp>{
  bool _value=false;
  bool _value2=false;
  void _valuechanged(bool value){
    setState()=>_value=value;
  }
  void _valuechanged2(bool value){
    setState()=>_value2=value;
  }
@override
Widget build(BuildContext context){
  return new Scaffold(
    appBar: new AppBar(
      title: new Text("All the Button Widgets"),

    ),
    body: new Container(
      padding: new EdgeInsets.all(32.0),
      child: new Center(
        child: new Column(
children: <Widget>[
  new Checkbox(value: _value, onChanged: _valuechanged),
  new CheckboxListTile(value: _value2, onChanged: _valuechanged2,
  title: new Text('Hello Kulesh'),
  controlAffinity: ListTileControlAffinity.leading,
  subtitle: new Text('subs'),
  secondary: new Icon(Icons.archive),
  activeColor: Colors.red,)
],
        ),
      ),
    ),
  );
}

}