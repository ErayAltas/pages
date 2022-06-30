import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pages/util/app_widget.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            AppWidget.buildRowCard("Eray Altaş", "son mesaj", Icons.person,
                isChat: true),
            AppWidget.buildRowCard("Vefa Çakmak", "son mesaj", Icons.person,
                isChat: true),
            AppWidget.buildRowCard("Mustafa Özcan", "son mesaj", Icons.person,
                isChat: true),
            AppWidget.buildRowCard("Bülent Erdi", "son mesaj", Icons.person,
                isChat: true),
            AppWidget.buildRowCard("Adnan Barış", "son mesaj", Icons.person,
                isChat: true),
            AppWidget.buildRowCard("Eray Altaş", "son mesaj", Icons.person,
                isChat: true),
            AppWidget.buildRowCard("Vefa Çakmak", "son mesaj", Icons.person,
                isChat: true),
            AppWidget.buildRowCard("Mustafa Özcan", "son mesaj", Icons.person,
                isChat: true),
            AppWidget.buildRowCard("Bülent Erdi", "son mesaj", Icons.person,
                isChat: true),
            AppWidget.buildRowCard("Adnan Barış", "son mesaj", Icons.person,
                isChat: true),
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
          "Sohbet",
          style: Get.theme.appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
      ),
      body: AppWidget.buildBody(widgets),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
