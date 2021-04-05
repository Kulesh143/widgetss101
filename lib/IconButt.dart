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
  int value=0;
  void add(){
    setState(() {
      value++;
    });
  }
  void remove(){
    setState(() {
      value--;
    });
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
  new Text('Value=${value}'),
  new IconButton(icon: new Icon(Icons.add), onPressed: add),
  new IconButton(icon: new Icon(Icons.remove), onPressed: remove),
],
        ),
      ),
    ),
  );
}

}