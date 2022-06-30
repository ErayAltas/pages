import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pages/util/app_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      SizedBox(
        width: 400,
        height: 200,
        child: AppWidget.buildCard(
            "Adnan Barış", "Mali Müşavir", "BDD Müşavirlik",
            welcome: true),
      ),
      Row(
        children: [
          AppWidget.buildTapCard("Müşavirlik Bilgileri",
              Icons.document_scanner_outlined, 180, 130),
          AppWidget.buildTapCard("Mükellef Bilgileri", Icons.info, 180, 130),
        ],
      ),
      Row(
        children: [
          AppWidget.buildTapCard(
              "Talepler", Icons.document_scanner_outlined, 180, 130),
          AppWidget.buildTapCard("Ayarlar", Icons.settings, 180, 130),
        ],
      ),
    ];
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.appBarTheme.backgroundColor,
        elevation: 0,
        title: Text("Home", style: Get.theme.appBarTheme.titleTextStyle),
        centerTitle: true,
      ),
      body: AppWidget.buildBody(widgets),
    );
  }
}
