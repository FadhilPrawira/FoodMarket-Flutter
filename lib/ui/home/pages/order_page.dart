import 'package:flutter/material.dart';
import 'package:foodmarket_flutter/ui/home/models/transaction_model.dart';
import 'package:foodmarket_flutter/ui/home/widgets/custom_tab_bar.dart';
import 'package:foodmarket_flutter/ui/home/widgets/transaction_list.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import 'main_page.dart';
import 'order_detail_page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth = MediaQuery.of(context).size.width - 2 * 24;
    bool isOrderAvailable = true;
    return isOrderAvailable
        ? Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Orders',
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: const Color(0xff020202),
                          ),
                        ),
                        Text(
                          'Wait for the best meal',
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTabBar(
                          titles: const ['In Progress', 'Past Orders'],
                          selectedIndex: selectedIndex,
                          onTap: (index) {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                        ),
                        const SpaceHeight(16),
                        Builder(
                          builder: (_) {
                            List<TransactionModel> transactions =
                                (selectedIndex == 0)
                                    ? mockTransactions
                                        .where((transaction) =>
                                            transaction.status ==
                                            TransactionStatus.inProgress)
                                        .toList()
                                    : mockTransactions
                                        .where((transaction) =>
                                            transaction.status ==
                                                TransactionStatus.finished ||
                                            transaction.status ==
                                                TransactionStatus.cancelled)
                                        .toList();

                            return transactions.isEmpty
                                ? const SizedBox(
                                    height: 80,
                                    child: Center(
                                      child: Text("No transactions"),
                                    ),
                                  )
                                : Column(
                                    children: transactions
                                        .map((transactions) => Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      24, 0, 24, 16),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          OrderDetailPage(
                                                              transactions),
                                                    ),
                                                  );
                                                },
                                                child: TransactionList(
                                                    transactions,
                                                    listItemWidth),
                                              ),
                                            ))
                                        .toList(),
                                  );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.images.imgOrderEmpty.image(),
                  const SpaceHeight(30),
                  const Text(
                    'Ouch! Hungry',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      color: Color(0xff020202),
                    ),
                  ),
                  const SpaceHeight(6),
                  const Text(
                    'Seems like you have not ordered any food yet',
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
                          builder: (context) => const MainPage(
                            selectedIndexFromAnotherPage: 0,
                          ),
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
