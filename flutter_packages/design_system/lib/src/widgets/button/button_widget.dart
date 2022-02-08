import 'package:design_system/src/texts/text_styles.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final bool disabled;
  final bool isLoading;
  final void Function()? onTap;
  final bool outline;
  final Widget? leading;
  final Color? color;
  final Color textColor;

  /// Alinea Button
  /// button that will be execute show a circular progress indicator
  ///
  /// [text] is the text inside button
  ///
  /// [onTap] is a function will be execute when button is clicked
  ///
  /// [isLoading] is a bool that check if  circular progress
  /// indicator is active.
  /// IMPORTANT -  You need change manually [isLoading]
  /// to activated the circular progress indicator
  ///
  /// [color] is a background color of button

  const ButtonWidget({
    Key? key,
    required this.title,
    this.disabled = false,
    this.isLoading = false,
    this.onTap,
    this.leading,
    this.color,
    this.textColor = Colors.white,
  })  : outline = false,
        super(key: key);

  const ButtonWidget.outline({
    Key? key,
    required this.title,
    this.onTap,
    this.leading,
    this.color,
    this.textColor = Colors.white,
  })  : disabled = false,
        isLoading = false,
        outline = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,
      decoration: !outline
          ? BoxDecoration(
              color: !disabled || onTap != null
                  ? color ?? Theme.of(context).secondaryHeaderColor
                  : Theme.of(context).disabledColor,
              borderRadius: BorderRadius.circular(4),
            )
          : BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: color ?? Theme.of(context).primaryColor,
                width: 1,
              ),
            ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: !isLoading
            ? _buildContent()
            : CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(textColor),
              ),
        onPressed: !isLoading ? onTap : null,
      ),
    );
  }

  Widget _buildContent() {
    if (leading != null) {
      return _buildWithIcon();
    }
    return _buildText();
  }

  Widget _buildText() {
    return Builder(
      builder: (context) {
        return Text(
          title,
          style: bodyStyle.copyWith(
            fontWeight: !outline ? FontWeight.bold : FontWeight.w400,
            color: !outline
                ? Colors.white
                : Theme.of(context).secondaryHeaderColor,
          ),
        );
      },
    );
  }

  Widget _buildWithIcon() {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: leading,
        ),
        const SizedBox(
          width: 13,
        ),
        Center(
          child: _buildText(),
        ),
      ],
    );
  }
}
