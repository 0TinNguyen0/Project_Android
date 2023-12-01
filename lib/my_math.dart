import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyMath extends StatefulWidget {
  const MyMath({super.key});

  @override
  State<MyMath> createState() => _MyMathState();
}

class _MyMathState extends State<MyMath> {
  var soThuNhat = TextEditingController();
  var soThuHai = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            "Toán học cơ bản",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: TextFormField(
              controller: soThuNhat,
              decoration: InputDecoration(
                hintText: "Số thứ nhất"
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r"[0-9.,]"))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: TextFormField(
              controller: soThuHai,
              decoration: InputDecoration(
                  hintText: "Số thứ hai"
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r"[0-9.,]"))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: (){
                  var tong = soThuNhat.text + soThuHai.text;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Tổng hai số là ${tong}"))
                  );
                },
                child: Text("Cộng"),
            ),
          ),
            ],
      ),
    );
  }
}
