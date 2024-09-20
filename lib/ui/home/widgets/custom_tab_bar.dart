import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int index) onTap;
  const CustomTabBar({
    super.key,
    required this.selectedIndex,
    required this.titles,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 14 * 1.5 +
          3 +
          13 +
          16, // Text title fontSize*heightRatio + Black Line Indicator height + Black Line Indicator margin top + text padding top
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 48),
              height: 1,
              color: const Color(0xffF2F2F2),
            ),
          ),
          Row(
            children: titles
                .map(
                  (title) => Padding(
                    padding: const EdgeInsets.only(left: 24, top: 16),
                    child: GestureDetector(
                      onTap: () {
                        onTap(titles.indexOf(title));
                      },
                      child: Column(
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              color: titles.indexOf(title) == selectedIndex
                                  ? const Color(0xff020202)
                                  : const Color(0xff8D92A3),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                            ),
                          ),
                          // Black Line Indicator
                          Container(
                            width: 40,
                            height: 3,
                            margin: const EdgeInsets.only(top: 13),
                            decoration: BoxDecoration(
                              color: titles.indexOf(title) == selectedIndex
                                  ? const Color(0xff020202)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(1.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
