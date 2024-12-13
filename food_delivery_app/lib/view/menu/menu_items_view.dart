import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';

import '../../common_widget/category_cell.dart';

class MenuItemsView extends StatefulWidget {
  final Map mObj;
  const MenuItemsView({super.key, required this.mObj});

  @override
  State<MenuItemsView> createState() => _MenuItemsViewState();
}

class _MenuItemsViewState extends State<MenuItemsView> {
  TextEditingController txtSearch = TextEditingController();

  List menuItemsArr = [
    {
      "image": "assets/img/dess_1.png",
      "name": "French apple pie",
      "rate": "4.9",
      "rating": "124",
      "type": "minute by tuk tuk",
      "food_type": "Desserts"
    },
    {
      "image": "assets/img/dess_2.png",
      "name": "Dark chocolate cake",
      "rate": "4.9",
      "rating": "124",
      "type": "cakes by Tella",
      "food_type": "Desserts"
    },
    {"image": "assets/img/dess_3.png",
      "name": "Street shake",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafe Racer", 
      "food_type": "Desserts"
    },
     {"image": "assets/img/dess_4.png",
      "name": "Fudgy chewy Brownies",
      "rate": "4.9",
      "rating": "124",
      "type": "minute by tuk tuk",
      "food_type": "Desserts"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/img/btn_back.png",
                            width: 20, height: 20)),
                         const SizedBox(width: 8,),
                    Text(
                      Widget.mObj["name"].toString(),
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Container()));
                      },
                      icon: Image.asset(
                        "assets/img/shopping_cart.png",
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: popArr.length,
                itemBuilder: ((context, index) {
                  var pObj = popArr[index] as Map? ?? {};
                  return PopularRestaurantRow(
                    pObj: pObj,
                    onTap: () {},
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
