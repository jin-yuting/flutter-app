
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title:'页面跳转返回数据',
    home: FirstPage(
      
    )
  ));
}

class FirstPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('小姐姐要电话')),
      body: Center(child: RouteButton(),),
    );
  }
}

class  RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){
        _navigateToXiao(context);
      },
      child: Text('去找小姐姐'),
    );
  }

  _navigateToXiao(BuildContext context) async{
    final result = await Navigator.push(context,MaterialPageRoute(
      builder: (context)=> XiaoJieJie()
    ));

    Scaffold.of(context).showSnackBar(SnackBar(content:Text('$result')));
  }
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我是小姐姐')),
      body: Center(child: Column(
        children: [
          Image.asset('iamges/jiantou.png'),
          RaisedButton(
            child: Text('大长腿'),
            onPressed: (){
              Navigator.pop(context,'大长腿小姐姐:123456');
            },
          ),
          RaisedButton(
            child: Text('小蛮腰'),
            onPressed: (){
              Navigator.pop(context,'小蛮腰小姐姐:123456');
            },
          )
        ],
      ),),
    );
  }
}


