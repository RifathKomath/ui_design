import 'package:flutter/material.dart';

Widget cutomFormField(
  {required String label,
  IconData? icon,
  IconData? icon_2}
  ) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          labelText: label,
          labelStyle: const TextStyle(
            color: Color.fromRGBO(109, 56, 5, 1),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none)),
    ),
  );
}
