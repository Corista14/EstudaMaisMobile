import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {

  final bool isObscure;
  final String label;
  final Function onChanged;

  const MyTextField({Key key, this.isObscure, this.label, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.teal,
      onChanged: onChanged,
      obscureText: isObscure,
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey[700]
      ),
      decoration: InputDecoration(
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.teal),
        ),
        labelText: label,
    
        labelStyle: TextStyle(
          color: Colors.grey[700],
        ),
      ),
    );
  }
}