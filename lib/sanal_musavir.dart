import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pages/util/app_constant.dart';

class SanalMusavir extends StatefulWidget {
  const SanalMusavir({Key? key}) : super(key: key);

  @override
  State<SanalMusavir> createState() => _SanalMusavirState();
}

class _SanalMusavirState extends State<SanalMusavir> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      body: AppConstant.screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.white,
            labelTextStyle: MaterialStateProperty.all(const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.white))),
        child: NavigationBar(
          height: 60,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          elevation: 4,
          backgroundColor: Get.theme.bottomNavigationBarTheme.backgroundColor,
          selectedIndex: index,
          onDestinationSelected: (index) {
            setState(() {
              this.index = index;
            });
          },
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.home_outlined,
                    color:
                        Get.theme.bottomNavigationBarTheme.unselectedItemColor),
                selectedIcon: Icon(Icons.home,
                    color:
                        Get.theme.bottomNavigationBarTheme.selectedItemColor),
                label: "Anasayfa"),
            NavigationDestination(
                icon: Icon(Icons.info_outline,
                    color:
                        Get.theme.bottomNavigationBarTheme.unselectedItemColor),
                selectedIcon: Icon(Icons.info,
                    color:
                        Get.theme.bottomNavigationBarTheme.selectedItemColor),
                label: "Bilgiler"),
            NavigationDestination(
                icon: Icon(Icons.send_outlined,
                    color:
                        Get.theme.bottomNavigationBarTheme.unselectedItemColor),
                selectedIcon: Icon(Icons.send,
                    color:
                        Get.theme.bottomNavigationBarTheme.selectedItemColor),
                label: "Belgeler"),
            NavigationDestination(
                icon: Icon(Icons.chat_bubble_outline,
                    color:
                        Get.theme.bottomNavigationBarTheme.unselectedItemColor),
                selectedIcon: Icon(Icons.chat_bubble,
                    color:
                        Get.theme.bottomNavigationBarTheme.selectedItemColor),
                label: "Sohbet"),
          ],
        ),
      ),
    );
  }
}
