import 'package:flutter/material.dart';
import 'detail_buku.dart';
import 'data_buku.dart';
import 'list_buku.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: rootPage(),
    );
  }
}
