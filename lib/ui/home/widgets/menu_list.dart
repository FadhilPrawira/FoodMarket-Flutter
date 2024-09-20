import 'package:flutter/material.dart';
import 'package:foodmarket_flutter/core/core.dart';
import 'package:foodmarket_flutter/ui/home/widgets/rating_stars_item.dart';

import '../models/menu_model.dart';

class MenuList extends StatelessWidget {
  final MenuModel menu;
  final double itemWidth;
  const MenuList(this.menu, this.itemWidth, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            menu.imageUrl,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        const SpaceWidth(12),
        SizedBox(
          width: itemWidth -
              60 -
              48 -
              110, // itemWidth - image - rightMargin - rating
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                menu.name,
                // overflow: TextOverflow.clip,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  color: Color(0xff020202),
                ),
              ),
              Text(
                menu.price.currencyFormatRp,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  color: Color(0xff8D92A3),
                ),
              ),
            ],
          ),
        ),
        RatingStarsItem(menu.rate),
      ],
    );
  }
}
