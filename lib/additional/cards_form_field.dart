import 'package:flutter/material.dart';

Widget cardFormField(
  {
    required String label
  }
){
  return TextFormField(
    decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        hintText: label,
        hintStyle: TextStyle(color: Color.fromRGBO(172, 142, 113, 1)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none)),
  );
}