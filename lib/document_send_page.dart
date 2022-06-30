import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pages/util/app_widget.dart';

class DocumentPage extends StatefulWidget {
  const DocumentPage({Key? key}) : super(key: key);

  @override
  State<DocumentPage> createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {
  @override
  Widget build(BuildContext context) {
    List<String> months = [
      "Ocak",
      "Şubat",
      "Mart",
      "Nisan",
      "Mayıs",
      "Haziran",
      "Temmuz",
      "Ağustos",
      "Eylül",
      "Ekim",
      "Kasım",
      "Aralık"
    ];
    List<String> years = ["2022", "2023"];
    List<Widget> widgets = [
      const SizedBox(
        height: 30,
      ),
      AppWidget.createTable(years, months),
      const SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text("Belge Gönder",
                            style: TextStyle(color: Colors.black)))),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text("Talep Gönder",
                            style: TextStyle(color: Colors.black)))),
              ],
            )
          ],
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.appBarTheme.backgroundColor,
        elevation: 0,
        title: Text(
          "Döküman Gönder",
          style: Get.theme.appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
      ),
      body: AppWidget.buildBody(widgets),
    );
  }
}
