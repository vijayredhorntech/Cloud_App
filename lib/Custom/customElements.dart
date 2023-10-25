import 'package:flutter/material.dart';
import 'customColors.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key, required this.label, required this.hint, required this.keyboardType}) : super(key: key);

  final String label;
  final String hint;
  final TextInputType keyboardType; // Changed the type to TextInputType

  @override
  Widget build(BuildContext context) {



    return TextFormField(
      keyboardType: keyboardType, // Use the keyboardType parameter here
      obscureText: label == 'Password' ? true : false,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColors.lightTheme),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColors.lightButton),
        ),

        hintStyle: TextStyle(color: CustomColors.lightButton, fontWeight: FontWeight.w400),
        labelStyle: TextStyle(color: CustomColors.darkText, fontWeight: FontWeight.w500),
      ),
    );
  }
}
