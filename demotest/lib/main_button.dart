import 'package:demotest/style/colors.dart';
import 'package:demotest/style/font.dart';
import 'package:demotest/style/spacings.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final bool isMain;

  const MainButton({
    super.key,
    required this.text,
    required this.onTap,
    this.isMain = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: kVerticalPaddingS,
          horizontal: kHorizontalPaddingS,
        ),
        decoration: BoxDecoration(
            color: isMain ? kMainColor : kTertiaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: Text(
            text,
            style: isMain ? kButtonStyle : kLabelStyle),
      ),
    );
  }
}
