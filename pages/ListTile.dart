import 'package:flutter/material.dart';

class ListTilePage extends StatefulWidget {
  // const ListTilePage({ Key? key }) : super(key: key);

  @override
  _ListTilePageState createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: getData(20));
  }

  // เตรียมข้อมูล แบบกำหนด ตัวเลขได้
  List<Widget> getData(int count) {
    // กลุ่มข้อมูล
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      var menu = ListTile(
        title: Text(
          "เมนูที่ ${i + 1}",
          style: TextStyle(fontSize: 20),
        ),
        subtitle: Text(" รายการสินค้าที่ : ${i + 1}"),
      );
    }
    return data;
  }
}
