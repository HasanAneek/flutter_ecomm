import 'package:flutter/material.dart';
import '../../../../utils/theme/theme_color.dart';

class ZCircularImage extends StatelessWidget {
  const ZCircularImage({
    super.key,
    required this.image,
    this.height = 56,
    this.width = 56,
    this.padding = 8,
    this.overlayColor,
    this.backgroundColor,
    this.fit = BoxFit.cover,
    this.isNetworkImage = false,
  });

  final String image;
  final bool isNetworkImage;
  final double height, width, padding;
  final Color? overlayColor;
  final Color? backgroundColor;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: ThemeColor.isDarkMode(context) ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}
