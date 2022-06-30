import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pages/util/app_widget.dart';

class MukellefPage extends StatefulWidget {
  const MukellefPage({Key? key}) : super(key: key);

  @override
  State<MukellefPage> createState() => _MukellefPageState();
}

class _MukellefPageState extends State<MukellefPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      AppWidget.buildCard("Ayşe Yılmaz", "Satış Danışmanı", "Getir"),
    ];
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        title: const Text("Mukellef Bilgileri",
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: AppWidget.buildBody(widgets),
    );
  }
}
