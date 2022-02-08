import 'package:flutter/material.dart';

import 'text_styles.dart';

class BoxText extends StatelessWidget {
  BoxText.body(this.text, {Key? key, Color color = Colors.black})
      : style = bodyStyle.copyWith(color: color),
        super(key: key);

  BoxText.smallBody(this.text, {Key? key, Color color = Colors.black})
      : style = smallBodyStyle.copyWith(color: color),
        super(key: key);
  BoxText.bodyLight(this.text, {Key? key, Color color = Colors.black})
      : style = bodyLightStyle.copyWith(color: color),
        super(key: key);

  final String text;
  final TextStyle style;

  BoxText.bodyBold(this.text, {Key? key, Color color = Colors.black})
      : style = bodyBoldStyle.copyWith(color: color),
        super(key: key);

  BoxText.headingOne(this.text, {Key? key, Color color = Colors.white})
      : style = heading1Style.copyWith(color: color),
        super(key: key);
  BoxText.headingTwo(this.text, {Key? key, Color color = Colors.white})
      : style = heading2Style.copyWith(color: color),
        super(key: key);
  BoxText.headingThree(this.text, {Key? key, Color color = Colors.white})
      : style = heading3Style.copyWith(color: color),
        super(key: key);
  BoxText.headingThreeRegular(this.text, {Key? key, Color color = Colors.white})
      : style = heading3RegularStyle.copyWith(color: color),
        super(key: key);
  BoxText.headingFour(this.text, {Key? key, Color color = Colors.white})
      : style = heading4Style.copyWith(color: color),
        super(key: key);
  BoxText.headingFourRegular(this.text, {Key? key, Color color = Colors.white})
      : style = heading4RegularStyle.copyWith(color: color),
        super(key: key);
  BoxText.headline(this.text, {Key? key, Color color = Colors.white})
      : style = headlineStyle.copyWith(color: color),
        super(key: key);
  BoxText.subheading(this.text, {Key? key, Color color = Colors.white})
      : style = subheadingStyle.copyWith(color: color),
        super(key: key);
  BoxText.caption(this.text, {Key? key, Color color = Colors.white})
      : style = captionStyle.copyWith(color: color),
        super(key: key);

  BoxText.subCaption(this.text, {Key? key, Color color = Colors.black})
      : style = subcaptionStyle.copyWith(color: color),
        super(key: key);
  BoxText.captionBold(this.text, {Key? key, Color color = Colors.white})
      : style = captionStyleBold.copyWith(color: color),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
