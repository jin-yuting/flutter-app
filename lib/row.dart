import 'package:flutter/material.dart';

void main() => runApp(MyApp(
));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'jinyuting Dome',
      home: Scaffold(
        appBar: new AppBar(title: new Text('ListView Widget')),
        body: new Row(
          children: [
            Expanded(child: new RaisedButton(
              onPressed: null,
              color: Colors.orangeAccent,
              child: new Text('Red'),
            ),),
            Expanded(child:new RaisedButton(
              onPressed: null,
              color: Colors.blueAccent,
              child: new Text('blue'),
            ),),
            new RaisedButton(
              onPressed: null,
              color: Colors.blueAccent,
              child: new Text('blue'),
              )
          ],
          
        )
      
      )
    );
  }
}

  