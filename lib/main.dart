import 'package:flutter/material.dart';
import 'package:project_chatty/pages/chat_pages.dart';
import 'package:project_chatty/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: ChatPage(),
    );
  }
}
