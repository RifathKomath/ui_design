import 'package:flutter/material.dart';
// import 'package:uidesign/additional/app_text_colors.dart';

Widget customItemText(
    {required String label,
    required String label_2,
    required String label_3,
    required String label_4}) {
  // final AppTextColors _appTextColors = AppTextColors();

  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(
                color: Color.fromRGBO(109, 56, 5, 1),
                fontSize: 22,
                fontWeight: FontWeight.w700)),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Icon(
              Icons.attach_money_rounded,
              color: Color.fromRGBO(109, 56, 5, 1),
            ),
            RichText(
                text: TextSpan(
                    text: label_2,
                    style: const TextStyle(
                        color: Color.fromRGBO(109, 56, 5, 1), fontSize: 20),
                    children: [
                  TextSpan(
                      text: label_3,
                      style: const TextStyle(
                          color: Color.fromRGBO(109, 56, 5, 1), fontSize: 14)),
                ])),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Text(label_4)
      ],
    ),
  );
}
