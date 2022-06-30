import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pages/util/app_widget.dart';

class MusavirPage extends StatefulWidget {
  const MusavirPage({Key? key}) : super(key: key);

  @override
  State<MusavirPage> createState() => _MusavirPageState();
}

class _MusavirPageState extends State<MusavirPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                AppWidget.buildRowCard("UNVAN", "unvan", Icons.title,
                    isChat: false),
                AppWidget.buildRowCard("BANKA HESAP NUMARASI ŞUBESİ BİLGİLERİ ",
                    "banka", FontAwesomeIcons.buildingColumns,
                    isChat: false),
                AppWidget.buildRowCard(
                    "ADRES",
                    "Bağlar, Osman Paşa Cd. No:3, Avrasya Plaza A blok Kat 4,34209 Bağcılar/İstanbul ",
                    FontAwesomeIcons.addressBook,
                    isChat: false),
                AppWidget.buildRowCard("İLETİŞİM", "iletisim", Icons.phone,
                    isChat: false),
              ],
            ),
          ),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        title: const Text("Musavir Bilgileri",
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: AppWidget.buildBody(widgets),
    );
  }
}
