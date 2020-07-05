import 'package:flutter/material.dart';
import 'package:sy_expedition_travel/styles.dart';
import 'package:sy_expedition_travel/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: mainBlack,
      ),
      home: SafeArea(
        child: MainPage(),
      )
    );
  }
}