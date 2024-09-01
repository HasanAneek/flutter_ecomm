// import 'package:bmi/features/menu_screens/home/controller/home_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'circular_container.dart';
// import 'main_screen_round_image.dart';
//
// class PromoSlider extends StatelessWidget {
//   const PromoSlider({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(HomeController());
//
//     return Column(
//       children: [
//         CarouselSlider(
//           options: CarouselOptions(
//             viewportFraction: 1,
//             onPageChanged: (index, _) => controller.updatePageIndicator(index),
//           ),
//           items: const [
//             MainBodyRoundImage(imageUrl: 'assets/category/accessories.jpg'),
//             MainBodyRoundImage(
//                 imageUrl:
//                     'assets/images/Man and woman giving each other a high five to celebrate success.png'),
//             MainBodyRoundImage(
//                 imageUrl:
//                     'assets/images/man in a cap with a box in his hands.png')
//           ],
//         ),
//         const SizedBox(height: 25),
//
//         //Carousel Indicator...
//         Center(
//           child: Obx(
//             () => Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 for (int i = 0; i < 3; i++)
//                   CircularContainer(
//                     height: 5,
//                     width: 22,
//                     margin: const EdgeInsets.only(right: 10),
//                     backgroundColor: controller.carouselCurrentIndex.value == i
//                         ? Colors.blue
//                         : Colors.grey,
//                   ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
