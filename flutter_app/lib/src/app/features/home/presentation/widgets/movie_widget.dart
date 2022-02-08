import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class MovieWidget extends StatelessWidget {
  final String? title;
  final String? image;
  final String? year;
  final Function? onTap;

  const MovieWidget({this.title, this.year, this.image, this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap,
      child: Card(
        child: Row(
          children: [
            if (image != null)
              Image.network(
                image!,
                width: 100,
                height: 150,
                fit: BoxFit.cover,
              ),
            const SizedBox(width: Spacing.x4),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$title",
                  ),
                  Text(
                    "Year: $year",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
