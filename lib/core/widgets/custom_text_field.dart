import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.keyboardType,
  });
  final TextEditingController controller;
  final String label;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (v) => "Please Fill The Field",
      controller: controller,

      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: label,

        hintStyle: TextStyle(
          fontFamily: 'Tenor Sans',
          color: Colors.grey.shade700,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
