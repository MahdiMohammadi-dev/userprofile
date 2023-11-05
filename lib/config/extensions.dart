import 'package:flutter/material.dart';

extension heightAndWidth on int {
  SizedBox get sizedBoxHeight => SizedBox(
        height: toDouble(),
      );
  SizedBox get sizedBoxWidth => SizedBox(
        width: toDouble(),
      );
}
