import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:woxro/application/bottom_navigation_provider.dart';

class ScreenBottomNavigation extends StatelessWidget {
  const ScreenBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Provider.of<BottomNavigationProvider>(context, listen: false).screens[
              Provider.of<BottomNavigationProvider>(context, listen: false)
                  .selectedIndex],
      bottomNavigationBar: Consumer<BottomNavigationProvider>(
        builder: (context, valueP, child) => BottomNavigationBar(
          elevation: 1,
          items: const [
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.call,
                  color: Colors.black,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.mail,
                  color: Colors.black,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_city,
                  color: Colors.black,
                ),
                label: "")
          ],
          currentIndex: valueP.selectedIndex,
          onTap: (value) {
            valueP.onTapItem(value);
          },
        ),
      ),
    );
  }
}
