import 'package:flutter/material.dart';

import 'colors_interface.dart';

class LightColors implements ColorsInterface {
  @override
  Color get kcBlack1 => const Color(0x8a000000);

  @override
  Color get kcBlack2 => const Color(0xdd000000);

  @override
  Color get kcCardBackground => Colors.white;

  @override
  Color get kcError => const Color(0xffd32f2f);

  Color get kcBlue => const Color(0xff5762d5);

  @override
  Color get kcGrey => const Color(0xff646464);

  @override
  Color get kcGrey2 => const Color(0xff808080);

  @override
  Color get kcLightGrey => const Color(0xffE5E5E5);

  @override
  Color get kcMediumGrey => const Color(0xff868686);

  @override
  Color get kcPrimary => const Color.fromRGBO(242, 129, 89, 1);

  @override
  Color get kcScafoldBackground => Colors.white;

  @override
  Color get kcSuccess => const Color(0xff5BA092);

  @override
  Color get kcTextColor => Colors.black;

  @override
  Color get kcTextFieldBackground => Colors.grey.shade200;

  @override
  Color get kcVeryLightGrey => const Color(0xfff2f2f2);

  @override
  Color get kcWarning => const Color(0xFFFED80A);

  @override
  Color get kcSecondary => const Color.fromRGBO(79, 33, 90, 1);
}
