import 'package:flutter/material.dart';

class FittedText extends Container {
  FittedText(String text, double width, {Key? key})
      : super(
          key: key,
          width: width,
          padding: const EdgeInsets.all(3.0),
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 12.0,
              ),
            ),
          ),
        );
}