import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pages/util/app_widget.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      AppWidget.buildCard("Adnan Barış", "Mali Müşavir", "BDD Müşavirlik"),
      AppWidget.buildCard(
          "Mustafa Özcan", "CEO", "Routin Bilgi Teknolojileri A.Ş"),
      AppWidget.buildCard("Vefa Çakmak", "Software Developer",
          "Routin Bilgi Teknolojileri A.Ş"),
      AppWidget.buildCard(
          "Eray Altaş", "Stajyer", "Routin Bilgi Teknolojileri A.Ş")
    ];
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.appBarTheme.backgroundColor,
        elevation: 0,
        title: Text(
          "Contact",
          style: Get.theme.appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
      ),
      body: AppWidget.buildBody(widgets),
    );
  }
}
