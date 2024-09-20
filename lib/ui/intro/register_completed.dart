import 'package:flutter/material.dart';
import 'package:foodmarket_flutter/ui/home/pages/main_page.dart';

import '../../core/core.dart';

class RegisterCompleted extends StatelessWidget {
  const RegisterCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.imgRegisterCompleted.image(),
            const SpaceHeight(30),
            const Text(
              'Yeay! Completed',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                height: 1.5,
                color: Color(0xff020202),
              ),
            ),
            const SpaceHeight(6),
            const Text(
              'Now you are able to order some foods as a self-reward',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                height: 1.5,
                color: Color(0xff8D92A3),
              ),
            ),
            const SpaceHeight(30),
            Button.filled(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                  (route) => false,
                );
              },
              label: 'Find Foods',
            ),
          ],
        ),
      ),
    );
  }
}
