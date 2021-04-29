import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("火币网购买记录"),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              isThreeLine: true,
              leading: Icon(
                Icons.money,
                color: Colors.blue,
              ),
              title: Text("币名称"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("购买数量：1000"),
                  Text("购买均价：1000"),
                  Text("最后一次购买时间：2021年04月29日14:48:03"),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 12,
              child: Divider(
                color: Colors.grey,
                indent: 40,
                height: 1,
              ),
            );
          },
          itemCount: 100),
    );
  }
}
