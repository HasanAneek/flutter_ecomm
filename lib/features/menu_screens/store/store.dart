import 'package:bmi/common/brand_title_text.dart';
import 'package:bmi/common/brand_title_text_with_verified_icon.dart';
import 'package:bmi/features/layout/grid_layout.dart';
import 'package:bmi/features/menu_screens/home/appbar/appbar.dart';
import 'package:bmi/features/menu_screens/home/cart/cart_menu_icon.dart';
import 'package:bmi/features/menu_screens/home/search_bar/search_container.dart';
import 'package:bmi/features/menu_screens/home/widget/rounded_container.dart';
import 'package:bmi/features/menu_screens/home/widget/section_heading.dart';
import 'package:bmi/features/menu_screens/store/widget/circular_image.dart';
import 'package:bmi/utils/theme/theme_color.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ThemeColor.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "Store",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [CartCounterIcon(onPressed: () {})],
        backgroundColor: dark ? Colors.black : Colors.white,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? Colors.black : Colors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(18),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: 16),
                    const SearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: 32),

                    // --Featured Brands
                    HomeSectionHeading(
                      title: 'Featured Brands',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 21),

                    //--Grid Layout
                    GridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: RoundedContainer(
                            padding: const EdgeInsets.all(8),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                //--Icon
                                ZCircularImage(
                                  image:
                                      'assets/category/Little Black Dress.png',
                                  backgroundColor: Colors.transparent,
                                  overlayColor: ThemeColor.isDarkMode(context)
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                const SizedBox(height: 5),

                                //--Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const ZBrandTitleWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        '256 Products',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
