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
  @override
  Widget build(BuildContext context){
    String value="Hello Kulesh";
    void onPressed(){
      setState(() {
        value="Im Kulesh";
      });
    }

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
              new RaisedButton(onPressed:()=>onPressed(),child: new Text('Click Me'),)
            ],
          ),
        ),
      ),
    );
  }

}