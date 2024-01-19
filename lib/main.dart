import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notify/Views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        key: Key('MainApp'),
      title: "Notify",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

