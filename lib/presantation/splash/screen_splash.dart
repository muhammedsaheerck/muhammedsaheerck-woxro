import 'package:flutter/material.dart';
import 'package:woxro/presantation/bottom_navigation.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              child: Image.asset(
                "asset/images.jpeg",
                fit: BoxFit.fill,
              ),
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "To india trusted global website development\n company that provides full-cycle softweare\n development services,e-commerce &Mobile\n App development",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 110,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const ScreenBottomNavigation(),
                    ));
                  },
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.grey.shade700)),
                  child: Text(
                    "Get started",
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                )),
            const SizedBox(
              height: 60,
            ),
            const Text(
              "2020 Woxro Technology Solutions pvt. Ltd.",
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
