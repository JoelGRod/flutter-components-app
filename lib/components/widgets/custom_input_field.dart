import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffix;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool focus;
  final bool obscureText;

  final String formField;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffix,
    this.icon,
    this.focus = false,
    this.keyboardType,
    this.obscureText = false, 
    required this.formField, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: focus,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) => formValues[formField] = value,
      validator: (value) {
        if (value == null) return 'Field is required';
        return value.length < 3 ? 'Minimun 3 chars' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // counterText: '3 char',
        // prefixIcon: Icon( Icons.person ),
        suffixIcon: suffix == null ? null : Icon(suffix),
        icon: icon == null ? null : Icon(icon),
        // Input Border style
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     topRight: Radius.circular(10),
        //     bottomLeft: Radius.circular(10)
        //   )
        // ),
        // Change specific color to one of the input states
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //    color: Colors.indigo
        //   )
        // )
      ),
    );
  }
}
