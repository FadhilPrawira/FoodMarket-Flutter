import 'package:flutter/material.dart';
import 'package:foodmarket_flutter/ui/home/pages/order_page.dart';
import 'package:foodmarket_flutter/ui/home/pages/profile_page.dart';

import '../../../core/core.dart';
import '../widgets/nav_item.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  final int selectedIndexFromAnotherPage;
  const MainPage({super.key, this.selectedIndexFromAnotherPage = 0});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late int _selectedIndex;
  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndexFromAnotherPage;
  }

  final _pages = [
    const HomePage(),
    const OrderPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: AppColors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavItem(
              iconPath: Assets.icons.icHomeNormal.path,
              isActive: _selectedIndex == 0,
              onTap: () => _onItemTapped(0),
            ),
            NavItem(
              iconPath: Assets.icons.icOrderNormal.path,
              isActive: _selectedIndex == 1,
              onTap: () => _onItemTapped(1),
            ),
            NavItem(
              iconPath: Assets.icons.icProfileNormal.path,
              isActive: _selectedIndex == 2,
              onTap: () => _onItemTapped(2),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
