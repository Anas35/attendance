import 'package:attendance/styles.dart';
import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  const FormInput({
    super.key, 
    required this.hintText, 
    this.validator, 
    this.onSaved, 
    this.initialValue, 
    this.onChanged,
    this.readOnly = false,
  });

  final String hintText;
  final String? initialValue;
  final bool readOnly;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 10.0,
      ),
      child: TextFormField(
        initialValue: initialValue,
        validator: validator,
        onSaved: onSaved,
        readOnly: readOnly,
        onChanged: onChanged,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: darkTextColor,
        ),
        decoration: InputDecoration(
          fillColor: textFieldColor,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 17,
            color: darkTextColor,
            fontWeight: FontWeight.w400
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.5),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
