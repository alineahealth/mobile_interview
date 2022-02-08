import 'package:design_system/src/style/colors/colors.dart';

import 'app_theme.dart';

class Themes {
  static final light = AppThemes.themeGenerator(LightColors());
  static final dark = AppThemes.themeGenerator(DarkColors());
}
