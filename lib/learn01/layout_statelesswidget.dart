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
        title: Text("币圈资产"),
      ),
      body: ContentBody(),
    );
  }
}

class ContentBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContentBodyState();
  }
}

class ContentBodyState extends State<ContentBody> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              value: flag,
              onChanged: (value) {
                setState(() {
                  flag = value;
                });
              }),
          Text("同意协议"),
        ],
      ),
    );
  }
}
