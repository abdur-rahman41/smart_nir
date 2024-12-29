import 'package:flutter/material.dart';

class AppTextFieldWidget extends StatelessWidget {
  const AppTextFieldWidget({
    Key? key,
    required this.hintText,
    required this.controller,
    this.obscureText,
    this.maxLines,
    this.validator,
    this.readOnly, required this.icon
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final bool? obscureText;
  final int? maxLines;
  final Function(String?)? validator;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      maxLines: maxLines ?? 1,
      readOnly: readOnly ?? false,
      validator: (value) {
        if (validator != null) {
          return validator!(value);
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: hintText,
        filled: true,
         border: const UnderlineInputBorder(),
        suffixIcon: Icon(icon)
        // border: const OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}
