import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class StarIconsHorizontal extends StatelessWidget {
  final IconData icon;
  final int count;

  const StarIconsHorizontal({required this.icon, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        count,
        (index) => Icon(icon, color: kstarColor, size: 17),
      ),
    );
  }
}
