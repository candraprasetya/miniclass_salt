//Import package (Cupertino | Material)
//Buat Main Function dan runApp
//Main Widget
//Child

import 'package:flutter/material.dart';
import 'package:miniclass_salt/screens/screens.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Class Salt',
      home: OnBoardingScreen(),
    );
  }
}
