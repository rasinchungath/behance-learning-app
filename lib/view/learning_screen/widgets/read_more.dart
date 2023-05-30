import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/read_more_text_controller.dart';

class DescriptionTextWidget extends StatelessWidget {
  final String text;

  DescriptionTextWidget({super.key, required this.text});

  final DescriptionTextController _controller =
      Get.put(DescriptionTextController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DescriptionTextController>(
      init: _controller.initializeText(text),
      builder: (_) => Obx(
        () => _controller.secondHalf.value.isEmpty
            ? Text(
                _controller.firstHalf.value,
                style: const TextStyle(
                  fontSize: 9,
                ),
              )
            : Column(
                children: <Widget>[
                  Text(
                    _controller.flag.value
                        ? '${_controller.firstHalf.value}...'
                        : '${_controller.firstHalf.value}${_controller.secondHalf.value}',
                    style: const TextStyle(
                      fontSize: 9,
                    ),
                  ),
                  InkWell(
                    onTap: _controller.toggleFlag,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          _controller.flag.value ? 'Read more' : 'Read less',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
