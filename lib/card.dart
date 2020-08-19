
import 'package:flutter/material.dart';

void main() => runApp(MyApp(
));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var card = new Card(
      child: Column(
        children: [
          ListTile(
            title: Text('吉林省吉林市昌邑区',style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('阿U'),
            leading:new Icon(Icons.account_box,color:Colors.lightBlue)
          ),
          new Divider(),
          ListTile(
            title: Text('长沙市阿阿阿',style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('小山'),
            leading:new Icon(Icons.account_box,color:Colors.lightBlue)
          ),
           new Divider(),
          ListTile(
            title: Text('河南省郑州市',style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('亲亲'),
            leading:new Icon(Icons.account_box,color:Colors.lightBlue)
          )
        ],
      ),
    );
    return MaterialApp(
      title:'jinyuting Dome',
      home: Scaffold(
        appBar: new AppBar(title: new Text('Column Widget')),
        body: Center(
          child: card,
        )
      
      )
    );
  }
}

  