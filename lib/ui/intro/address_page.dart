import 'package:flutter/material.dart';
import 'package:foodmarket_flutter/ui/intro/register_completed.dart';

import '../../core/core.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    final addressController = TextEditingController();
    final houseNumberController = TextEditingController();

    String? selectedValue;
    final List<String> cities = <String>[
      'Jakarta',
      'Bandung',
      'Surabaya',
      'Semarang',
      'Yogyakarta'
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 24,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                height: 1.5,
                color: Color(0xff020202),
              ),
            ),
            Text(
              'Make sure it\'s valid',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                height: 1.5,
                color: Color(0xff8D92A3),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              CustomTextField(
                controller: phoneController,
                label: 'Phone No.',
                hintText: 'Type your phone number',
                isOutlineBorder: true,
              ),
              const SpaceHeight(16),
              CustomTextField(
                controller: addressController,
                label: 'Address',
                hintText: 'Type your address',
                isOutlineBorder: true,
              ),
              const SpaceHeight(16),
              CustomTextField(
                controller: houseNumberController,
                label: 'House No.',
                hintText: 'Type your house number',
                isOutlineBorder: true,
              ),
              const SpaceHeight(16),
              CustomDropdown(
                value: selectedValue,
                items: cities,
                label: 'City',
                hint: 'Select your city',
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue;
                  });
                },
              ),
              // CustomTextField(
              //   controller: houseNumberController,
              //   label: 'City',
              //   hintText: 'Select your city',
              //   isOutlineBorder: true,
              // ),
              const SpaceHeight(24),
              Button.filled(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterCompleted(),
                    ),
                    (route) => false,
                  );
                },
                label: 'Continue',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
