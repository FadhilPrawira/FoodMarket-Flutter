import 'package:flutter/material.dart';
import 'package:foodmarket_flutter/ui/home/pages/payments_page.dart';
import 'package:foodmarket_flutter/ui/home/pages/security_page.dart';

import 'package:foodmarket_flutter/ui/home/widgets/custom_tab_bar.dart';
import 'package:foodmarket_flutter/ui/intro/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../models/customer_model.dart';
import 'edit_profile_page.dart';
import 'help_center_page.dart';
import 'home_address_page.dart';
import 'privacy_policy_page.dart';
import 'rate_app_page.dart';
import 'term_conditions_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;
  List<String> accountPages = [
    'Edit Profile',
    'Home Address',
    'Security',
    'Payments',
  ];

  List<String> foodMarketPages = [
    'Rate App',
    'Help Center',
    'Privacy & Policy',
    'Term & Conditions',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 232,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture
              SizedBox(
                width: 110,
                height: 110,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Assets.icons.icDottedBorderPhoto.svg(
                      width: 110,
                      height: 110,
                    ),
                    ClipOval(
                      child: Image.asset(
                        mockCustomers[1].imageUrl,
                        fit: BoxFit.cover,
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ],
                ),
              ),
              const SpaceHeight(16),
              // Name and Email
              Text(
                mockCustomers[1].fullName,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                  color: const Color(0xff020202),
                ),
              ),
              const SpaceHeight(6),
              Text(
                mockCustomers[1].email,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  height: 1.5,
                  color: const Color(0xff8D92A3),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTabBar(
              titles: const ['Account', 'FoodMarket'],
              selectedIndex: selectedIndex,
              onTap: (index) {
                setState(
                  () {
                    selectedIndex = index;
                  },
                );
              },
            ),
            const SpaceHeight(18),
            Builder(
              builder: (_) {
                List<String> pages =
                    (selectedIndex == 0) ? accountPages : foodMarketPages;

                return Column(
                  children: pages
                      .map(
                        (page) => Padding(
                          padding: const EdgeInsets.fromLTRB(24, 0, 24, 13),
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            horizontalTitleGap: 0,
                            minTileHeight: 0,
                            titleTextStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: const Color(0xff020202),
                            ),
                            title: Text(page),
                            trailing: const Icon(Icons.chevron_right),
                            leadingAndTrailingTextStyle: const TextStyle(
                              color: Color(0xff8D92A3),
                            ),
                            onTap: () => {
                              if (page == 'Edit Profile')
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const EditProfilePage()),
                                  )
                                }
                              else if (page == 'Home Address')
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeAddressPage()),
                                  )
                                }
                              else if (page == 'Security')
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SecurityPage()),
                                  )
                                }
                              else if (page == 'Payments')
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PaymentsPage()),
                                  )
                                }
                              else if (page == 'Rate App')
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RateAppPage()),
                                  )
                                }
                              else if (page == 'Help Center')
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HelpCenterPage()),
                                  )
                                }
                              else if (page == 'Privacy & Policy')
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PrivacyPolicyPage()),
                                  )
                                }
                              else if (page == 'Term & Conditions')
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TermConditionsPage()),
                                  )
                                }
                            },
                          ),
                        ),
                      )
                      .toList(),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Button.filled(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                      (route) => false);
                },
                label: 'Logout',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
