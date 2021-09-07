import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BoxData extends StatelessWidget {
  // const BoxData({ Key? key }) : super(key: key);

  late String title; //ชื่อรายการ
  late double amount; //จำนวน
  late Color color; // สี
  late double size; // ขนาดกล่อง

  BoxData(
    this.title,
    this.amount,
    this.color,
    this.size,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      height: size,
      child: Row(
        children: [
          Text(
            "ยอดคงเหลือ",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold, //กำหนดตัวหนา
            ),
          ),
          Expanded(
            child: Text(
              // กำหนด จุดทศนิยมและคอมม่า
              '${NumberFormat("#,###.##").format(amount)}' /* amount.toString()*/,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right, //กำหนดให้อยู่ right
            ),
          ),
        ],
      ),
    );
  }
}
