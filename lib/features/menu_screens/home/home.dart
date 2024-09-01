import 'package:bmi/features/layout/grid_layout.dart';
import 'package:bmi/features/menu_screens/home/products_card/product_card_vertical.dart';
import 'package:bmi/features/menu_screens/home/search_bar/search_container.dart';
import 'package:bmi/features/menu_screens/home/widget/primary_header_container.dart';
import 'package:bmi/features/menu_screens/home/widget/section_heading.dart';
import 'package:bmi/features/menu_screens/home/widget/vertical_image_text.dart';
import 'package:flutter/material.dart';
import 'appbar/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  const HomeAppBar(),
                  const SizedBox(height: 32),

                  //SearchBar
                  const SearchContainer(text: 'Search in Store'),
                  const SizedBox(height: 32),

                  //Heading Text
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Column(
                      children: [
                        Text(
                          "Popular Categories",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: Colors.white),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Category
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return VerticalImageText(
                          image: 'assets/category/shopping card.png',
                          title: 'Cart',
                          onTap: () {},
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            //Main Body Part sliding images...
            const Padding(
              padding: EdgeInsets.all(10.0),
              // child: PromoSlider(),
              child: null,
            ),

            //Product Heading...
            HomeSectionHeading(
              title: "Popular Products",
              onPressed: () {},
            ),

            // Popular Products List...
            GridLayout(
              itemCount: 4,
              itemBuilder: (_, index) => const ProductCardVertical(),
            ),
          ],
        ),
      ),
    );
  }
}
