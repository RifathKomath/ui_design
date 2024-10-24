import 'package:flutter/material.dart';

Widget customShowCrdListView({
  required String image,
  required IconData icon,
  required String label,
  required String subLabel,
}) {
  return ListTile(
    
    leading: SizedBox(
      width: 50,
      child: Image.asset(image)),
    title: Text(
      label,
      style: const TextStyle(
          color: Color.fromRGBO(109, 56, 5, 1),
          fontSize: 18,
          fontWeight: FontWeight.w700),
    ),
    subtitle: Text(subLabel,
        style: const TextStyle(
            color: Color.fromRGBO(109, 56, 5, 1),
            fontSize: 14,
            fontWeight: FontWeight.w400)),
    trailing: Icon(
      icon,
      color: const Color.fromRGBO(109, 56, 5, 1),
    ),
  );
}
