import 'package:flutter/material.dart';
import 'package:flutter_ds_gov_br/flutter_ds_gov_br.dart';

class GovSnackBar extends SnackBar {

  final DSGovStates state;

  GovSnackBar({
    super.key,
    this.state = DSGovStates.info,
    required BuildContext context,
    required String message,
    super.padding,
    super.action,
    super.actionOverflowThreshold,
    super.showCloseIcon,
    super.closeIconColor,
    super.duration,
    super.animation,
    super.onVisible,
    super.dismissDirection,
  }) : super(
    content: Text(
      message,
      style: TextStyle(color: _getTextColor(state),),
    ),
    backgroundColor: _getBackgroundColor(context, state),
  );

  static Color _getBackgroundColor(BuildContext context, DSGovStates state) {
    final colorScheme = Theme.of(context).colorScheme;
    switch (state) {
      case DSGovStates.info:
        return colorScheme.primary;
      case DSGovStates.error:
        return colorScheme.error;
      case DSGovStates.warning:
        return const Color(0xFFFFF5C2);
      case DSGovStates.success:
        return colorScheme.secondary;
    }
  }

  static Color _getTextColor(DSGovStates state) {
    switch (state) {
      case DSGovStates.info:
      case DSGovStates.error:
      case DSGovStates.success:
        return Colors.white;
      case DSGovStates.warning:
        return Colors.black;
    }
  }
}
