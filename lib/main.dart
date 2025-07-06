import 'package:flutter/material.dart';
import 'package:whatsapp/whatsScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsScreen(),
    ) ;
  }
}
 void main (){
  runApp(MyApp());
 }