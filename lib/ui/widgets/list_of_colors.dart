import 'package:flutter/material.dart';

import 'color_dot.dart';

class ListOfColors extends StatelessWidget {
  const ListOfColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ColorDot(
            fillColor: Color(0xFF80989A),
            isSelected: true,
          ),
          ColorDot(
            fillColor: Color(0xFFFF5200),
          ),
          ColorDot(
            fillColor: Color(0xFF035AA6),
          ),
        ],
      ),
    );
  }
}
