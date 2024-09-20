import 'package:flutter/material.dart';
import 'package:foodmarket_flutter/ui/home/models/customer_model.dart';
import 'package:foodmarket_flutter/ui/home/models/transaction_model.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';

class OrderDetailPage extends StatelessWidget {
  final TransactionModel transaction;

  const OrderDetailPage(this.transaction, {super.key});

  @override
  Widget build(BuildContext context) {
    int driverFee = 50000;
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 24, 24, 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payment',
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      color: const Color(0xff020202),
                    ),
                  ),
                  Text(
                    'You deserve better meal',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      height: 1.5,
                      color: const Color(0xff8D92A3),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SpaceHeight(24),
            Container(
              color: const Color(0xffffffff),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Item Ordered',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1.5,
                      color: Color(0xff020202),
                    ),
                  ),
                  const SpaceHeight(12),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12, bottom: 16),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            Assets.images.imgFood1.path,
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transaction.food.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                height: 1.5,
                                color: Color(0xff020202),
                              ),
                            ),
                            Text(
                              transaction.food.price.currencyFormatRp,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                height: 1.5,
                                color: Color(0xff8D92A3),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '${transaction.quantity} items',
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          height: 1.5,
                          color: Color(0xff8D92A3),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Details Transaction',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1.5,
                      color: Color(0xff020202),
                    ),
                  ),
                  const SpaceWidth(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        transaction.food.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff8D92A3),
                        ),
                      ),
                      Text(
                        (transaction.food.price * transaction.quantity)
                            .currencyFormatRp,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                    ],
                  ),
                  const SpaceWidth(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Driver',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff8D92A3),
                        ),
                      ),
                      Text(
                        driverFee.currencyFormatRp,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                    ],
                  ),
                  const SpaceWidth(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Tax 10%',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff8D92A3),
                        ),
                      ),
                      Text(
                        (transaction.food.price * transaction.quantity * 0.1)
                            .currencyFormatRp,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                    ],
                  ),
                  const SpaceWidth(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total Price',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff8D92A3),
                        ),
                      ),
                      Text(
                        transaction.totalPrice.currencyFormatRp,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff1ABC9C),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SpaceHeight(24),
            Container(
              color: const Color(0xffffffff),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Deliver to:',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1.5,
                      color: Color(0xff020202),
                    ),
                  ),
                  const SpaceWidth(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Name',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff8D92A3),
                        ),
                      ),
                      Text(
                        mockCustomers[1].fullName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                    ],
                  ),
                  const SpaceWidth(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Phone No.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff8D92A3),
                        ),
                      ),
                      Text(
                        mockCustomers[1].phoneNumber,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                    ],
                  ),
                  const SpaceWidth(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Address',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff8D92A3),
                        ),
                      ),
                      Text(
                        mockCustomers[1].address,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                    ],
                  ),
                  const SpaceWidth(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'House No.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff8D92A3),
                        ),
                      ),
                      Text(
                        mockCustomers[1].houseNumber,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                    ],
                  ),
                  const SpaceWidth(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'City',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff8D92A3),
                        ),
                      ),
                      Text(
                        mockCustomers[1].city,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SpaceHeight(24),
            Container(
              color: const Color(0xffffffff),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Order Status:',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1.5,
                      color: Color(0xff020202),
                    ),
                  ),
                  const SpaceWidth(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '#FM209391',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff8D92A3),
                        ),
                      ),
                      Text(
                        transaction.status.name ==
                                TransactionStatus.inProgress.name
                            ? 'Paid'
                            : transaction.status.name.capitalizeFirstLetter(),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 1.5,
                          color: transaction.status.name ==
                                  TransactionStatus.cancelled.name
                              ? const Color(0xffD9435E)
                              : const Color(0xff1ABC9C),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          transaction.status.name == TransactionStatus.inProgress.name
              ? Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Button.filled(
                    color: const Color(0xffD9435E),
                    textColor: const Color(0xffFFFFFF),
                    onPressed: () {
                      // Navigator.pushAndRemoveUntil(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const OrderCreated(),
                      //   ),
                      //   (route) => false,
                      // );
                    },
                    label: 'Cancel My Order',
                  ),
                )
              : const SizedBox.shrink(),
    );
  }
}
