import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pages/util/app_widget.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String dropdownvalue = 'Türkçe';
    var items = ['Türkçe', "İngilizce", "Almanca", "İspanyolca"];
    List<Widget> widgets = [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 500,
          width: 400,
          child: Card(
            color: Colors.grey.shade100,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  const Text("Hesap", textAlign: TextAlign.start),
                  Row(
                    children: [
                      const Icon(Icons.phone),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Telefon Numarası"),
                      const SizedBox(
                        width: 125,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward))
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.mail),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Gmail"),
                      const SizedBox(
                        width: 200,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward))
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.exit_to_app),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Çıkış"),
                      const SizedBox(
                        width: 205,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward))
                    ],
                  ),
                  const Divider(
                    height: 10,
                    thickness: 2,
                  ),
                  const SizedBox(height: 8),
                  const Text("Tema", textAlign: TextAlign.start),
                  Row(
                    children: [
                      const Icon(Icons.dark_mode),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Koyu Tema"),
                      const SizedBox(
                        width: 160,
                      ),
                      Switch(
                          activeColor: Colors.green,
                          value: isSwitched,
                          onChanged: (value) {
                            toggleSwitch(value);
                          })
                    ],
                  ),
                  const Divider(
                    height: 10,
                    thickness: 2,
                  ),
                  const SizedBox(height: 8),
                  const Text("Dil", textAlign: TextAlign.start),
                  Row(
                    children: [
                      const Icon(Icons.language),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Dil"),
                      const SizedBox(
                        width: 180,
                      ),
                      DropdownButton(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    ];
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.appBarTheme.backgroundColor,
        elevation: 0,
        title: const Text("Ayarlar", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: AppWidget.buildBody(widgets),
    );
  }
}
