import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Messages', style: kTitleTextStyle),
      ),
    );
  }
}
