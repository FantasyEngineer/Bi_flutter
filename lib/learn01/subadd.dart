import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("实现计数器"),
      ),
      body: HomeContent("你好，我是侯继国"),
    );
  }
}

class HomeContent extends StatefulWidget {
  final String message;

  HomeContent(this.message);

  @override
  State<StatefulWidget> createState() {
    return _HomeContentState();
  }
}

class _HomeContentState extends State<HomeContent> {
  var _num = 1;

  @override
  Widget build(BuildContext context) {
    /*这里是能拿到父类的message的*/
    this.widget.message;
    return Container(
      /*实现边框*/
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(width: 10, color: Colors.purple),
            right: BorderSide(width: 10, color: Colors.purple),
            bottom: BorderSide(width: 10, color: Colors.purple),
            left: BorderSide(width: 10, color: Colors.purple)),
      ),
      /*实现padding*/
      padding: EdgeInsets.all(8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*实现加减号*/
            _getButtons(),
            /*实现间距*/
            SizedBox(height: 20),
            /*实现展示计数结果*/
            Text("当前计数：" + _num.toString()),
            /*这里取的是父类的值*/
            Text(this.widget.message),
          ],
        ),
      ),
    );
  }

  /*实现加减号*/
  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          child: Text("+"),
          color: Colors.pink,
          onPressed: () => add(),
        ),
        SizedBox(width: 20),
        RaisedButton(
          child: Text("-"),
          color: Colors.green,
          onPressed: () => sub(),
        ),
      ],
    );
  }

  /*实现加*/
  add() {
    setState(() {
      _num++;
    });
  }

  /*实现减*/
  sub() {
    setState(() {
      _num--;
    });
  }
}
