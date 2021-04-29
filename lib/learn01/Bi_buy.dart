import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  /*创建control*/
  final nameControl = TextEditingController();
  final numControl = TextEditingController();
  final priceControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryColor: Colors.red),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameControl,
              inputFormatters: [
                //只允许输入字母
                WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
              ],
              decoration: InputDecoration(
                labelText: "币名称",
                icon: Icon(Icons.people_alt),
                hintText: "请输入币名称",
                border: OutlineInputBorder(),
                filled: true,
              ),
              /*监听输入的事件*/
              onChanged: (value) {
                print("onChanged" + value);
              },
              /*用户点击了键盘的完成按钮*/
              onSubmitted: (value) {
                print("onSubmitted" + value);
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: numControl,
              inputFormatters: [
                //只允许输入小数
                WhitelistingTextInputFormatter(RegExp("[0-9.]")),
              ],
              decoration: InputDecoration(
                icon: Icon(Icons.twenty_mp),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                ),
                hintText: "请输入购买币数量",
                labelText: "币数量",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: priceControl,
              //只允许输入小数
              inputFormatters: [
                //只允许输入小数
                WhitelistingTextInputFormatter(RegExp("[0-9.]")),
              ],
              decoration: InputDecoration(
                icon: Icon(Icons.attach_money),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                ),
                labelText: "币价格",
                hintText: "请输入购买的币价格",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: FlatButton(
                color: Colors.red,
                child: Text(
                  "登录",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {
                  /*获取用户名和密码*/
                  final name = nameControl.text;
                  final num = numControl.text;
                  final price = priceControl.text;
                  print("币名称；$name,币数量$num，币价格$price");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
