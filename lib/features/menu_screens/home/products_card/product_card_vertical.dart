import 'package:bmi/features/menu_screens/home/widget/product_price_text.dart';
import 'package:bmi/features/menu_screens/home/widget/product_title_text.dart';
import 'package:bmi/features/menu_screens/home/widget/round_thumbnail_image.dart';
import 'package:bmi/features/menu_screens/home/widget/rounded_container.dart';
import 'package:bmi/utils/shadows.dart';
import 'package:bmi/utils/theme/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/brand_title_text_with_verified_icon.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ThemeColor.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [ShadowStyle.verticalProductShadow],
          color: dark ? Colors.grey : Colors.white12,
        ),
        child: Column(
          children: [
            //Thumbnail, Wishlist, Price Tag Button...
            RoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  //Thumbnail Image...
                  const RoundThumbnailImage(
                      imageUrl: 'assets/category/Sassy style.jpg'),

                  // Sale Tag...
                  Positioned(
                    top: 10,
                    child: RoundedContainer(
                      radius: 10,
                      backgroundColor: Colors.yellow.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: Colors.black),
                      ),
                    ),
                  ),

                  //Favourite Icon Button...
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Iconsax.heart5),
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //Details of Product...
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: 'Green Nike Air Shoe',
                  ),
                  SizedBox(height: 7),
                  ZBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                  ),
                ],
              ),
            ),

            const Spacer(),

            //Price Tag...
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Price
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: HomeProductPriceText(
                    title: ("\$35.5"),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                  ),
                  child: const SizedBox(
                    height: 32,
                    width: 32,
                    child: Icon(Iconsax.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
