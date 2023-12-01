
import 'package:bai_hoc/my_cinema.dart';
import 'package:bai_hoc/my_class_room.dart';
import 'package:bai_hoc/my_form.dart';
import 'package:bai_hoc/my_home_page.dart';
import 'package:bai_hoc/my_instagram.dart';
import 'package:bai_hoc/my_login_instagram.dart';
import 'package:bai_hoc/my_math.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Group 02",

      home: MyLoginInstagram(),
      debugShowCheckedModeBanner: false,
    );
  }
}
