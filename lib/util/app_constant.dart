import 'package:flutter/material.dart';

import '../chat_page.dart';
import '../contact_page.dart';
import '../document_send_page.dart';
import '../home_page.dart';
import '../settings_page.dart';

class AppConstant {
  static List<Widget> screens = [
    const HomePage(),
    const ContactPage(),
    const DocumentPage(),
    const ChatPage(),
    const SettingsPage(),
  ];
}
