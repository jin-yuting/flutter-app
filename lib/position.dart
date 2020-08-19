
import 'package:flutter/material.dart';

void main() => runApp(MyApp(
));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: [
      new CircleAvatar(
        backgroundImage: new NetworkImage('https://img3.doubanio.com/icon/u144864943-2.jpg'),
        radius: 100.0,
      ),
      new Positioned(
        top:10.0,
        left:10.0,
        child: Text('小彤'),
      ),
      new Positioned(
        bottom:10.0,
        right:10.0,
        child: Text('阿U'),
      )
    ]);
    return MaterialApp(
      title:'jinyuting Dome',
      home: Scaffold(
        appBar: new AppBar(title: new Text('positioned Widget')),
        body: Center(
          child: stack,
        )
      
      )
    );
  }
}

  