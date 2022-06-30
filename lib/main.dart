import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pages/sanal_musavir.dart';
import 'package:pages/util/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: ThemeData(
      //   // Define the default brightness and colors.
      //   brightness: Brightness.light,
      //   primaryColor: Colors.lightBlue[800],
      //   // Define the default font family.
      //   fontFamily: 'Georgia',
      //   // Define the default `TextTheme`. Use this to specify the default
      //   // text styling for headlines, titles, bodies of text, and more.
      //   textTheme: const TextTheme(
      //     headline1: TextStyle(
      //         fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.red),
      //     headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      //     bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      //   ),
      // ),
      theme: Themes.light,
      darkTheme: Themes.dark,
      home: const SanalMusavir(),
    );
  }
}
