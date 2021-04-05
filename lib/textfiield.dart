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
  String value='';
  void onchange(String value){
setState()=>value='change:${value}';
  }
  void oncsubmit(String value){
    setState()=>value='submit:${value}';
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
  new Text(value),
  new TextField(
    decoration: new InputDecoration(
      labelText: 'hello',
      hintText: 'hello',
      icon: new Icon(Icons.people),
          ),
    autocorrect: true,
    autofocus: true,
    keyboardType: TextInputType.text,
    onSubmitted: oncsubmit,
    onChanged: onchange,
  ),
],
        ),
      ),
    ),
  );
}

}