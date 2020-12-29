import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aham'),
        ),
        body: Column(children: [
          Text('What\'s your favourite color?'),
          RaisedButton(child: Text('Red'), onPressed: null,),
          RaisedButton(child: Text('Blue'), onPressed: null,),
          RaisedButton(child: Text('Black'), onPressed: null,),
        ],),
      ),
    );
  }
}
