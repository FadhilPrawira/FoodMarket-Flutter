import 'package:flutter/material.dart';
import 'package:foodmarket_flutter/core/core.dart';
import 'package:foodmarket_flutter/ui/home/models/transaction_model.dart';

class TransactionList extends StatelessWidget {
  final TransactionModel transaction;
  final double itemWidth;
  const TransactionList(this.transaction, this.itemWidth, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            transaction.food.imageUrl,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        const SpaceWidth(12),
        Expanded(
          child: SizedBox(
            // width: itemWidth -
            //     60 -
            //     48 -
            //     110, // itemWidth - image - rightMargin - rating
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.food.name,
                  // overflow: TextOverflow.clip,

                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    color: Color(0xff020202),
                  ),
                ),
                Text(
                  '${transaction.quantity} items • ${transaction.totalPrice.currencyFormatRp}',
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
        ),
        transaction.status.name == TransactionStatus.inProgress.name
            ? const SizedBox.shrink()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    transaction.transactionTime.toFormattedBwaStyle(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      height: 1.5,
                      color: Color(0xff8D92A3),
                    ),
                  ),
                  transaction.status.name == TransactionStatus.finished.name
                      ? const SizedBox.shrink()
                      : Text(
                          transaction.status.name.capitalizeFirstLetter(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            height: 1.5,
                            color: Color(0xffD9435E),
                          ),
                        ),
                ],
              )
      ],
    );
  }
}
