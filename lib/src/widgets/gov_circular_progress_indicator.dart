import 'package:flutter/material.dart';

class GovCircularProgressIndicator extends CircularProgressIndicator {

  const GovCircularProgressIndicator({
    super.key,
    super.semanticsLabel,
    super.semanticsValue,
  }): super(
    strokeWidth: 2
  );

}