import 'package:flutter/material.dart';

class DescriptionTextWidget extends StatefulWidget {
  final String text;

  const DescriptionTextWidget({required this.text});

  @override
  _DescriptionTextWidgetState createState() => _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  String? firstHalf;
  String? secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 240) {
      firstHalf = widget.text.substring(0, 240);
      secondHalf = widget.text.substring(240, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return secondHalf!.isEmpty
        ? Text(
            firstHalf!,
            style: const TextStyle(
              fontSize: 9,
            ),
          )
        : Column(
            children: <Widget>[
              Text(
                flag ? ('$firstHalf...') : (firstHalf! + secondHalf!),
                style: const TextStyle(
                  fontSize: 9,
                ),
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      flag ? "Read more" : "Read less",
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  setState(() {
                    flag = !flag;
                  });
                },
              ),
            ],
          );
  }
}
