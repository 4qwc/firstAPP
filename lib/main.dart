import 'package:flutter/material.dart';
import 'FoodMenu.dart';

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
      theme: ThemeData(primarySwatch: Colors.pink),
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
  var number = 0;

  // กลุ่มข้อมูล โดยใช้ FoodMenu.dart
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา", "500", "assets/images/picture1.jpg"),
    FoodMenu("ข้าวผัด", "100", "assets/images/picture2.jpg"),
    FoodMenu("ต้มยำรวมมิตร", "500", "assets/images/picture3.jpg"),
    FoodMenu("ผัดคะน้าหมูกรอบ", "100", "assets/images/picture4.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    // การเพิ่มกลุ่มข้อมูล text widget
    List<Widget> data = [];

    for (var i = 0; i < 10; i++) {
      data.add(Text(
        "รายการสินค้าที่: ${i + 1} ",
        style: TextStyle(fontSize: 30),
      ));
    }

    //#################
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      height: 200,
      child: Scaffold(
          appBar: AppBar(
            title: Text("เลือกเมนูอาหาร"),
          ),

          // ชุดคำสั่งแสดงรายการเมนู
          // แสดงผลข้อมูล
          body: ListView.builder(
              itemCount: menu.length, //คำสั่งระบุจำนวนเมนู มาจาก menu.length
              itemBuilder: (BuildContext context, int index) {
                FoodMenu food = menu[index];
                return ListTile(
                  leading: Image.asset(food.img), // คำสั่งนำภาพมาแสดง
                  title: Text(
                    food.name,
                    style: TextStyle(fontSize: 25),
                  ),
                  subtitle: Text("ราคา " + food.price + "บาท"),
                  // เพิ่ม อีเว้นเมื่อกดเมนูอาหาร
                  onTap: () {
                    print("คุณเลือกเมนูอาหารชื่อว่า: " + food.name);
                  },
                );
              })),
    );
  }
}
