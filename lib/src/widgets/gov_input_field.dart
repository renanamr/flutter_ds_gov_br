import 'package:flutter/material.dart';

class GovInputField extends StatelessWidget {
  
  final String label;
  final TextEditingController controller;

  final Widget? suffixIcon;
  final bool obscureText;

  final EdgeInsets padding;

  final String? Function(String?)? validator;

  final String? hintText;

  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final TextInputType? keyboardType;

  const GovInputField({
    super.key,
    required this.label,
    required this.controller,
    this.suffixIcon,
    this.validator,
    this.obscureText = false,
    this.padding = const EdgeInsets.symmetric(vertical: 4),
    this.maxLength,
    this.minLines,
    this.maxLines,
    this.keyboardType,
    this.hintText,
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        maxLength: maxLength,
        minLines: minLines,
        maxLines: maxLines,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            hintText: hintText,
            labelText: label,
            suffixIcon: suffixIcon,
            suffixIconColor: Theme.of(context).primaryColor
        ),
      ),
    );
  }
}