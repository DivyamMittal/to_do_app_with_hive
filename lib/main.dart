import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_app_with_hive/Screens/homepage.dart';

void main() async {
  // initialize the hive
  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox("mybox");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xfff3e7e9)),
      home: HomePage(),
    );
  }
}
