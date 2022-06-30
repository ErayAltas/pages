import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pages/mukellef_page.dart';
import 'package:pages/musavir_page.dart';
import 'package:pages/settings_page.dart';
import 'package:pages/talep_page.dart';

class AppWidget {
  static Widget buildCard(String name, String title, String subtitle,
      {bool welcome = false}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 8,
            ),
            Column(
              children: [
                const CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person, size: 36),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 5,
                ),
                Text(title),
                const SizedBox(
                  height: 5,
                ),
                Text(subtitle),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
            !welcome
                ? const Divider(
                    height: 0,
                    thickness: 1,
                  )
                : const SizedBox(height: 0, width: 0),
            !welcome
                ? Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.phone, size: 22),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mail,
                            size: 22,
                          ),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chat,
                            size: 22,
                          ),
                        ),
                      ))
                    ],
                  )
                : const SizedBox(
                    height: 0,
                    width: 0,
                  )
          ],
        ),
      ),
    );
  }

  static Widget buildRowCard(String title, String subtitle, IconData icon,
      {bool isChat = false}) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                child: Icon(icon, size: 20),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 100),
              isChat
                  ? const SizedBox(
                      height: 0,
                      width: 0,
                    )
                  : IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.copy,
                        size: 18,
                      ),
                      onPressed: () {},
                    ),
              const SizedBox(
                width: 10,
              ),
              isChat
                  ? const Text(
                      "12.59",
                      style: TextStyle(color: Colors.black),
                    )
                  : const SizedBox(
                      height: 0,
                      width: 0,
                    )
            ],
          ),
        ),
      ),
    );
  }

  static Widget createTable(List<String> years, List<String> months) {
    List<TableRow> rows = [];
    rows.add(const TableRow(children: [
      Text("Tarih",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold)),
      Text("Belge Sayısı",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold)),
      Text("Onay Durumu",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold))
    ]));
    for (int i = 0; i < 12; ++i) {
      String num = Random().nextInt(10).toString();
      rows.add(TableRow(children: [
        Text("${years[0]} ${months[i]}", textAlign: TextAlign.center),
        Text(num, textAlign: TextAlign.center),
        const Icon(Icons.done)
      ]));
    }
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: rows,
            border: TableBorder.all(borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }

  static void onPressed(String title) {
    if (title == "Ayarlar") {
      Get.to(() => const SettingsPage());
    }
    if (title == "Müşavirlik Bilgileri") {
      Get.to(() => const MusavirPage());
    }
    if (title == "Mükellef Bilgileri") {
      Get.to(() => const MukellefPage());
    }
    if (title == "Talepler") {
      Get.to(() => const TalepPage());
    }
  }

  static Widget buildTapCard(
      String title, IconData icon, double width, double height) {
    return TextButton(
      onPressed: () => onPressed(title),
      child: SizedBox(
        width: width,
        height: height,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FaIcon(
                  icon,
                  size: 40,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  title,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget buildBody(List<Widget> widgets) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(36),
                  bottomLeft: Radius.circular(36)),
              shape: BoxShape.rectangle,
              color: Get.theme.appBarTheme.backgroundColor),
          height: 110,
          width: double.infinity,
        ),
        SingleChildScrollView(child: Column(children: widgets)),
      ],
    );
  }
}
