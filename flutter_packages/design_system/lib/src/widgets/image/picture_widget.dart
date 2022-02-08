import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PictureWidget {
  PictureWidget._();
  static Widget asset(String image, {Color? color}) {
    if (image.contains('.svg')) {
      return SvgPicture.asset(
        image,
        package: 'design_system',
        color: color,
        fit: BoxFit.contain,
      );
    }

    return Image.asset(
      image,
      package: 'design_system',
      fit: BoxFit.contain,
      color: color,
    );
  }

  static Widget circle(String file, {Color? color}) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            file,
            package: 'design_system',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
