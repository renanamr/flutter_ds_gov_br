import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GovInputField extends StatelessWidget {
  
  final String label;
  final TextEditingController controller;

  final Widget? suffixIcon;
  final bool obscureText;
  final bool readOnly;
  final bool autocorrect;

  final EdgeInsets padding;

  final String? Function(String?)? validator;

  final String? hintText;

  final List<TextInputFormatter>? inputFormatters;

  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final TextInputType? keyboardType;

  final FocusNode? focusNode;

  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;

  const GovInputField({
    super.key,
    required this.label,
    required this.controller,
    this.suffixIcon,
    this.validator,
    this.readOnly = false,
    this.obscureText = false,
    this.autocorrect = true,
    this.padding = const EdgeInsets.symmetric(vertical: 10),
    this.maxLength,
    this.minLines,
    this.maxLines,
    this.keyboardType,
    this.hintText,
    this.inputFormatters,
    this.onChanged,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.focusNode,
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
        inputFormatters: inputFormatters,

        readOnly: readOnly,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        focusNode: focusNode,
        autocorrect: autocorrect,

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