
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    title:'jinyuting Dome',
    home: new  FirstScreen()
  )
);

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(title: Text('导航界面')),
      body: Center(
        child: RaisedButton(
          child:Text('查看商品详情界面'),
          onPressed:(){
            Navigator.push(context, new MaterialPageRoute(
              builder:(context)=> new SecondScreen()
            ));
          }
        ),
      )
    );
  }
}

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('商品详情页')),
      body: Center(child: RaisedButton(
        child:Text('返回'),
        onPressed: (){
          Navigator.pop(context);
        },
        
        ),
      ),
    );
  }
}