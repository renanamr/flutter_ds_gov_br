import 'package:flutter/material.dart';
import 'package:flutter_ds_gov_br/src/states/ds_gov_states.dart';

class GovTooltip extends StatelessWidget {
  final String message;
  final Color? backgroundColor;
  final Color? messageColor;

  const GovTooltip({
    super.key,
    required this.message,
    this.backgroundColor,
    this.messageColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        message,
        maxLines: 1,
        style: TextStyle(
          color: messageColor ?? Colors.white,
        ),
      ),
    );
  }
}