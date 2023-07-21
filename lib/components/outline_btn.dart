import 'package:flutter/material.dart';
import 'package:flutter_task/constants/colors.dart';

class OutlineBtn extends StatelessWidget {
  const OutlineBtn({
    super.key,
    required this.title,
    this.iconImage,
    this.borderRadius = 16,
  });

  final Image? iconImage;
  final String title;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kWhiteColor,
          border: Border.all(color: kPrimaryColor, width: 2),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconImage ?? Container(),
            if (iconImage != null)
              const SizedBox(
                width: 16,
              ),
            Text(
              title,
              style: const TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ));
  }
}
