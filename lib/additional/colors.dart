import 'package:flutter/material.dart';

TextStyle smallParagraph() {
  return const TextStyle(
    color: Color.fromRGBO(127, 83, 29, 10),
    fontSize: 16,
  );
}

TextStyle itemReviewTitle() {
  return const TextStyle(
      color: Color.fromRGBO(109, 56, 5, 1),
      fontWeight: FontWeight.w700,
      fontSize: 20);
}

TextStyle itemReviewSubTitle() {
  return const TextStyle(color: Color.fromRGBO(109, 56, 5, 1), fontSize: 18);
}

Widget customRow({
  required String label,
  required String money,
  TextStyle? labelStyle,
}) {
  return  Row(
    children: [
      Text(label,style:labelStyle),
      const Spacer(),
      const Icon(Icons.attach_money,weight: 20,
      color: Color.fromRGBO(109, 56, 5, 1),),
      Text(money,style: labelStyle)
    ],
  );
}
