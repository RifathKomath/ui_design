import 'package:flutter/material.dart';

Widget customCatogories({
  required String image,
}) {
  return SizedBox(
    child: Card(
      color: Colors.white,
      elevation: 0,
      child: Center(
        child: InkWell(
          child: Image.asset(image),
          onTap: null,
        ),
      ),
    ),
  );
}
