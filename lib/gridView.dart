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
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
            childAspectRatio: 0.7
          ),
          children: <Widget>[
            new Image.network(
              'https://img3.doubanio.com/icon/u144864943-2.jpg',
            ),
            new Image.network(
              'https://img3.doubanio.com/icon/u144864943-2.jpg',
            ),
            new Image.network(
              'https://img3.doubanio.com/icon/u144864943-2.jpg',
            ),
            new Image.asset('images/jiantou.png')
          ]
        )
        // body: GridView.count(
        //   padding: const EdgeInsets.all(20.0),
        //   crossAxisSpacing: 10.0,
        //   crossAxisCount: 3,
        //   children: <Widget>[
        //     const Text('I am jin'),
        //     const Text('I am jin'),
        //     const Text('I am jin'),
        //     const Text('I am jin'),
        //   ],
        // )
      )
    );
  }
}

  