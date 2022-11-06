import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  final Color fillColor;
  final bool isSelected;
  const ColorDot({
    super.key,
    required this.fillColor,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 9.0),
      padding: const EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? const Color(0xFF707070) : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}
