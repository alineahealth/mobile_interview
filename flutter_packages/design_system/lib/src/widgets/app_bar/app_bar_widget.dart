import 'package:flutter/material.dart';

import '../../images/images_constants.dart';
import '../image/picture_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget(
      {Key? key, this.primaryColor = false, this.hasHeader = false})
      : super(key: key);

  final bool primaryColor;
  final bool hasHeader;

  @override
  Size get preferredSize => !hasHeader
      ? const Size.fromHeight(kToolbarHeight + 13)
      : const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottomOpacity: 0.0,
      elevation: 0.0,
      shadowColor: !primaryColor
          ? Theme.of(context).secondaryHeaderColor
          : Theme.of(context).primaryColor,
      backgroundColor: !primaryColor
          ? Theme.of(context).secondaryHeaderColor
          : Theme.of(context).primaryColor,
      automaticallyImplyLeading: false,
      title: SizedBox(
        height: 170,
        width: 170,
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: PictureWidget.asset(
            ImagesConstants.logoWithName,
          ),
        ),
      ),
    );
  }
}
