import 'package:flutter/material.dart';

Widget customTab({required String label}) {
  return SizedBox(
    width: 120,
    child: Padding(
      padding: const EdgeInsets.only(top: 5,left: 5),
      child: Card(
        color: Colors.white,
          elevation: 0,
          shape: const RoundedRectangleBorder(),
          child: Center(
              child: InkWell(
                  child: Text(label,
                      style: const TextStyle(
                          color: Color.fromRGBO(109, 56, 5, 1),
                          fontSize: 20))))),
    ),
  );
}
