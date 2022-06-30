import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pages/util/app_widget.dart';

class TalepPage extends StatefulWidget {
  const TalepPage({Key? key}) : super(key: key);

  @override
  State<TalepPage> createState() => _TalepPageState();
}

class _TalepPageState extends State<TalepPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 400,
          width: 400,
          child: Card(
            child: null,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
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
        title: Text("Talepler", style: Get.theme.appBarTheme.titleTextStyle),
        centerTitle: true,
      ),
      body: AppWidget.buildBody(widgets),
    );
  }
}
