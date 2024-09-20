import 'package:flutter/material.dart';
import 'package:foodmarket_flutter/core/core.dart';
import 'package:foodmarket_flutter/ui/home/models/customer_model.dart';
import 'package:foodmarket_flutter/ui/home/widgets/menu_card.dart';
import 'package:foodmarket_flutter/ui/home/widgets/menu_list.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/menu_model.dart';
import '../widgets/custom_tab_bar.dart';
import 'food_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth = MediaQuery.of(context).size.width - 2 * 24;
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'FoodMarket',
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      color: const Color(0xff020202),
                    ),
                  ),
                  Text(
                    'Let\'s get some foods',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      height: 1.5,
                      color: const Color(0xff8D92A3),
                    ),
                  )
                ],
              ),
              ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  mockCustomers[1].imageUrl,
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 258,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: mockFoods
                        .map((menu) => Padding(
                              padding: EdgeInsets.only(
                                  left: menu == mockFoods.first ? 24 : 0,
                                  right: 24),
                              child: GestureDetector(
                                child: MenuCard(menu),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          FoodDetailPage(menu),
                                    ),
                                  );
                                },
                              ),
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: AppColors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: const ['New Taste', 'Popular', 'Recommended'],
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
                      List<MenuModel> menus = (selectedIndex == 0)
                          ? mockFoods
                          : (selectedIndex == 1)
                              ? []
                              : [];

                      return menus.isEmpty
                          ? const SizedBox(
                              height: 80,
                              child: Center(
                                child: Text("No menu"),
                              ),
                            )
                          : Column(
                              children: menus
                                  .map((menu) => Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            24, 0, 24, 16),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    FoodDetailPage(menu),
                                              ),
                                            );
                                          },
                                          child: MenuList(menu, listItemWidth),
                                        ),
                                      ))
                                  .toList(),
                            );
                    },
                  ),
                ],
              ),
            ),
            const SpaceHeight(80),
          ],
        ),
      ),
    );
  }
}
