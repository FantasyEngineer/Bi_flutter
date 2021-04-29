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
        backgroundColor: Colors.green,
        title: Text(
          "平台",
        ),
      ),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 300,
              child: ImageButton("火币网", Icons.pets, Colors.lightBlue)),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 300,
              child: ImageButton("币安网", Icons.pets, Colors.amberAccent)),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 300,
              child: ImageButton("欧易Ok网", Icons.pets, Colors.green)),
        ],
      ),
    );
  }
}

class ImageButton extends StatelessWidget {
  final title;
  final icon;
  final color;

  const ImageButton(
    this.title,
    this.icon,
    this.color, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            SizedBox(
              width: 20,
            ),
            Text(title),
          ],
        ),
      ),
      onPressed: () {},
    );
  }
}
