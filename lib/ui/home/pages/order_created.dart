import 'package:flutter/material.dart';
import 'package:foodmarket_flutter/ui/home/pages/main_page.dart';

import '../../../core/core.dart';

class OrderCreated extends StatelessWidget {
  const OrderCreated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.imgOrderCreated.image(),
            const SpaceHeight(30),
            const Text(
              'You\'ve Made Order',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                height: 1.5,
                color: Color(0xff020202),
              ),
            ),
            const SpaceHeight(6),
            const Text(
              'Just stay at home while we are preparing your best foods',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
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
              label: 'Order Other Foods',
            ),
            const SpaceHeight(12),
            Button.filled(
              color: const Color(0xff8D92A3),
              textColor: const Color(0xffF9FAFF),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPage(
                        selectedIndexFromAnotherPage:
                            1), // Main Page index 1 (order page)
                  ),
                  (route) => false,
                );
              },
              label: 'View My Order',
            )
          ],
        ),
      ),
    );
  }
}
