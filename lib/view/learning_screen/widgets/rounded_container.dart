import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../../home screen/widgets/circular_container.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: border,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Row(
          children: [
            CircularImageContainer(image: image),
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: kTitleTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
