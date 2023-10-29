import 'package:demotest/style/spacings.dart';
import 'package:flutter/material.dart';

class BoxSelection extends StatelessWidget {
  final Color color; // Déclarez un paramètre pour la couleur

  const BoxSelection({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPaddingS),
      child: Container(
        height: 4,
        width: 50, // Hauteur de la ligne
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
