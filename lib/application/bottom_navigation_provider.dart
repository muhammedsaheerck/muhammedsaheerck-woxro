import 'package:flutter/material.dart';
import 'package:woxro/presantation/home/screen_home.dart';

import '../presantation/blog/screen_blog.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int selectedIndex = 0;
  final List screens = const [ScreenHome(), ScreenBlog()];
  void onTapItem(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
