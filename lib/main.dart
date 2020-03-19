import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Test(),
    );
  }
}

class Test extends StatefulWidget {
  Test({Key key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  String dataA;
  GoogleTranslator translator = GoogleTranslator();

  @override
  void initState() {
    dataA = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text(dataA),
          MaterialButton(
            child: Text("dataA"),
            onPressed: () {
              translateA("Hello");
            },
            color: Colors.blue,
          )
        ],
      ),
    );
  }

  void translateA(String word) async {
    String data = await word.translate(to: 'zh-cn');
    setState(() {
      dataA = data;
    });
  }
}
