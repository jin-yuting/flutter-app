import 'package:flutter/material.dart';

void main() => runApp(MyApp(
  items: new List<String>.generate(1000, (index) => 'Item $index')
));

class MyApp extends StatelessWidget{
  final List<String> items;
  MyApp({Key key, @required this.items}):super(key:key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'jinyuting Dome',
      home: Scaffold(
      appBar: new AppBar(title: new Text('ListView Widget')),
      body: new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          return new ListTile(
            title:new Text('${items[index]}')
          );
        }
      )
      // body: Center (
      //   child: Container(
      //     height: 200.0,
      //     child: MyList()
      //   ),
      // )
      )
    );
  }
}

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width:180.0,
          color:Colors.amberAccent,
        ),
        new Container(
          width:180.0,
          color:Colors.red,
        ),
        new Container(
          width:180.0,
          color:Colors.blue,
        )
      ],
    );
  }
}