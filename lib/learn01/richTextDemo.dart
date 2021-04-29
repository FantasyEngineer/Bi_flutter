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
    );
  }
}

/*文本展示*/

class JGHomeBody extends StatefulWidget {
  @override
  _JGState createState() => _JGState();
}

class _JGState extends State<JGHomeBody> {
  @override
  Widget build(BuildContext context) {
    return RichTextDemo();
  }
}


/*富文本*/
class RichTextDemo extends StatelessWidget {
  const RichTextDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(text: "hello world", style: TextStyle(color: Colors.red)),
      TextSpan(text: "hello world", style: TextStyle(color: Colors.green)),
      WidgetSpan(
          child: Icon(
            Icons.favorite,
            color: Colors.red,
          )),
      TextSpan(text: "hello world", style: TextStyle(color: Colors.black26)),
    ]));
  }
}

/*普通文本*/
class TextDemo extends StatelessWidget {
  const TextDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello worldHello worldHello worldHello worldHello worldHello worldHello worldHello world",
      textAlign: TextAlign.center,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
    );
  }
}
