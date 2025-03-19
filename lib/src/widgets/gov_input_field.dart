import 'package:flutter/material.dart';

class GovInputField extends StatelessWidget {
  
  final String label;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final bool obscureText;

  const GovInputField({
    super.key,
    required this.label,
    required this.controller,
    this.obscureText = false,
    this.suffixIcon,
  });
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          labelText: label,
          //border: OutlineInputBorder(
            //borderRadius: BorderRadius.circular(8),
            //borderSide: const BorderSide(color: Colors.blue),
          //),
          //focusedBorder: OutlineInputBorder(
           // borderRadius: BorderRadius.circular(8),
            //borderSide: BorderSide(
                //color: Theme.of(context).primaryColor,
              //  width: 2
            //),
          //),
          suffixIcon: suffixIcon
      ),
    );
  }
}