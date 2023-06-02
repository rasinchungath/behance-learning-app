import 'package:flutter/material.dart';
import '../../../constants/constants.dart';

class BottomBarContainer extends StatelessWidget {
  const BottomBarContainer(
      {super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8, right: 8),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: kprimaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 22,
            ),
            const SizedBox(
              width: 3,
            ),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 6,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
