import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:woxro/presantation/splash/screen_splash.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const HeadingCustomText(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CustomCircleWidget(
                    imageUrl: "asset/images.jpeg", name: "Coupon"),
                CustomCircleWidget(imageUrl: "asset/images.jpeg", name: "Ads"),
                CustomCircleWidget(
                    imageUrl: "asset/images.jpeg", name: "Quatation"),
                CustomCircleWidget(
                  imageUrl: "asset/images.jpeg",
                  name: "Brochure",
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Card(
                  child: Text("data"),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class CustomCircleWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  const CustomCircleWidget({
    required this.imageUrl,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          maxRadius: 32,
          backgroundColor: Colors.grey.shade300,
          child: CircleAvatar(
            maxRadius: 30,
            backgroundColor: Colors.white,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.contain,
              width: 35,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(name)
      ],
    );
  }
}
