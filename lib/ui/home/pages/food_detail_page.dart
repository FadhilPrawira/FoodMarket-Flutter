import 'package:flutter/material.dart';
import 'package:foodmarket_flutter/ui/home/models/menu_model.dart';
import 'package:foodmarket_flutter/ui/home/widgets/rating_stars_item.dart';

import '../../../core/core.dart';
import 'checkout_page.dart';

class FoodDetailPage extends StatelessWidget {
  final MenuModel menu;
  const FoodDetailPage(this.menu, {super.key});

  @override
  Widget build(BuildContext context) {
    final quantityNotifier = ValueNotifier(0);

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              menu.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          // Container for content
          Container(
            margin:
                const EdgeInsets.only(top: 240), // Space for the image height
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 26, 16.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Food name and rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            menu.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: Color(0xff020202),
                            ),
                          ),
                          const SpaceHeight(6),
                          RatingStarsItem(menu.rate),
                        ],
                      ),
                      // Quantity selector
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              if (quantityNotifier.value > 0) {
                                quantityNotifier.value--;
                              }
                            },
                            child: Assets.icons.icRemoveBoxOutlined.svg(
                              height: 26,
                              width: 26,
                            ),
                          ),
                          SizedBox(
                            width: 35,
                            child: ValueListenableBuilder(
                              valueListenable: quantityNotifier,
                              builder: (context, value, _) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  '$value',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0,
                                    height: 1.5,
                                    color: Color(0xff020202),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => quantityNotifier.value++,
                            child: Assets.icons.icAddBoxOutlined.svg(
                              height: 26,
                              width: 26,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SpaceHeight(14.0),

                  Container(
                    height: MediaQuery.of(context).size.height - 550,
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6.0,
                          offset: Offset(0, 2), // Shadow position
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(
                            8.0), // Padding inside the container
                        child: Text(
                          menu.description,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 24 / 14,
                            color: Color(0xff8D92A3),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SpaceHeight(16.0),

                  const Text(
                    'Ingredients:',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 24 / 14,
                      color: Color(0xff020202),
                    ),
                  ),
                  Text(
                    menu.ingredients,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1.5,
                      color: Color(0xff8D92A3),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Total Price:',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      height: 1.5,
                      color: Color(0xff8D92A3),
                    ),
                  ),
                  Text(
                    menu.price.currencyFormatRp,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0,
                      height: 1.5,
                      color: Color(0xff020202),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Button.filled(
                onPressed: () {
                  if (quantityNotifier.value <= 0) {
                    // snackbar
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(
                          'Jumlah makanan tidak boleh kurang dari atau sama dengan nol',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckoutPage(
                          menu,
                          quantity: quantityNotifier.value,
                        ),
                      ),
                    );
                  }
                },
                label: 'Order Now',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
