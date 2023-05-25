import 'package:flutter/material.dart';

class WeekCard extends StatefulWidget {
  WeekCard({super.key, required this.weeks});
  final int weeks;

  @override
  State<WeekCard> createState() => _WeekCardState();
}
 
class _WeekCardState extends State<WeekCard> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 1.5,
            color: Colors.black87,
          ),
          color: selected ? Colors.black : null,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            bottom: 10,
            top: 10,
          ),
          child: Text(
            'WEEK ${widget.weeks + 1}',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: selected ? Colors.white : null,
            ),
          ),
        ),
      ),
    );
  }
}
