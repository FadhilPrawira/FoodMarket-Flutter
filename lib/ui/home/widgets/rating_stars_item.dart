import 'package:flutter/material.dart';

import '../../../core/core.dart';

class RatingStarsItem extends StatelessWidget {
  final double rate;
  const RatingStarsItem(this.rate, {super.key});

  @override
  Widget build(BuildContext context) {
    int fullStars = rate.floor();
    bool hasHalfStar = (rate - fullStars) >= 0.5;
    int emptyStars = 5 - fullStars - (hasHalfStar ? 1 : 0);

    /// We use floor instead of round because we want to get the integer part of the rate.
    /// Example rate = 3.7
    /// fullStars = 3
    /// hasHalfStar = true
    /// emptyStars = 1
    ///
    /// Example rate = 3.5
    /// fullStars = 3
    /// hasHalfStar = true
    /// emptyStars = 1
    ///
    /// Example rate = 3.2
    /// fullStars = 3
    /// hasHalfStar = false
    /// emptyStars = 2

    return Row(
      children: [
        ...List<Widget>.generate(
          fullStars,
          (index) => const Icon(
            Icons.star,
            color: AppColors.primary,
          ),
        ),
        if (hasHalfStar)
          const Icon(
            Icons.star_half,
            color: AppColors.primary,
          ),
        ...List<Widget>.generate(
          emptyStars,
          (index) => const Icon(
            Icons.star_outline,
            color: Color(0xffECECEC),
          ),
        ),
        const SpaceWidth(4),
        Text(
          rate.toString(),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: Color(0xff8D92A3),
          ),
        ),
      ],
    );
  }
}
