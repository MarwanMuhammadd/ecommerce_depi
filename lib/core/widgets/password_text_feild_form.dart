
import 'package:flutter/material.dart';

class PasswordTextFeildForm extends StatefulWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  const PasswordTextFeildForm({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.validator,
  });

  @override
  State<PasswordTextFeildForm> createState() => _PasswordTextFeildFormState();
}

class _PasswordTextFeildFormState extends State<PasswordTextFeildForm> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon:
            widget.suffixIcon ??
            IconButton(
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              icon:
                  obscureText
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
            ),
      ),
    );
  }
}
