import 'package:flutter/material.dart';
import 'BoxData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Flutter',
      home: MyHomePage(title: 'MyApp'),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // การเพิ่มกลุ่มข้อมูล  widget

    return Scaffold(
      appBar: AppBar(
        title: Text("บัญชีของฉัน"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            BoxData("ยอดคงเหลือ", 12500000.55, Colors.lightBlue, 150),
            SizedBox(
              height: 5,
            ),
            BoxData("รายรับ", 25000.25, Colors.green, 100),
            SizedBox(
              height: 5,
            ),
            BoxData("รายจ่าย", 10000.77, Colors.red, 100),
            SizedBox(
              height: 5,
            ),
            BoxData("ค้างชำระ", 10000.99, Colors.orange, 100),
          ],
        ),
      ),
    );
  }
}
