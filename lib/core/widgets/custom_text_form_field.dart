import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final Icon? prefixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  final bool? readOnly;
  void Function(String)? onChanged;
  CustomTextFormField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.validator,
    this.onTap,
    this.readOnly,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      onTap: onTap,
      validator: validator,
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: InputDecoration(hintText: hintText, prefixIcon: prefixIcon),
    );
  }
}
