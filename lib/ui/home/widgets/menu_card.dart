import 'package:flutter/material.dart';
import 'package:foodmarket_flutter/ui/home/widgets/rating_stars_item.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../models/menu_model.dart';

class MenuCard extends StatelessWidget {
  final MenuModel menu;
  const MenuCard(this.menu, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.white,
      ),
      // margin: const EdgeInsets.only(right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              menu.imageUrl,
              width: 200,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 6),
            width: 200,
            child: Text(
              menu.name,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.5,
                color: const Color(0xff020202),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: RatingStarsItem(menu.rate),
          )
        ],
      ),
    );
  }
}
