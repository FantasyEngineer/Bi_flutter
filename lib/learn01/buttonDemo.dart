import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JGHomePage(),
    );
  }
}

class JGHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础widget"),
      ),
      body: JGHomeBody(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: () => print("2423")),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

/*按钮*/
class JGHomeBody extends StatefulWidget {
  @override
  _JGState createState() => _JGState();
}

class _JGState extends State<JGHomeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          child: Text("RaisedButton"),
          textColor: Colors.green,
          color: Colors.yellow,
          onPressed: () => press(),
        ),
        FlatButton(
            onPressed: () => click(),
            color: Colors.green,
            child: Text("FlatButton")),
        OutlineButton(
          onPressed: () {
            print("print");
          },
          color: Colors.blue,
          child: Text("OutlineButton"),
        ),
        /*自定义button*/
        FlatButton(
            color: Colors.lightBlueAccent,
            /*实现圆角*/
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
            onPressed: () => print("你好"),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                Text("喜欢作者")
              ],
            ))
      ],
    );
  }

  press() {
    print("print");
  }

  click() {}
}
