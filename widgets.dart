import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return RichText(
    text: const TextSpan(
      style: TextStyle(fontSize: 22),
      children: <TextSpan>[
        TextSpan(
            text: 'Soot ',
            style:
            TextStyle(fontWeight: FontWeight.w600, color: Colors.blue)),
        TextSpan(
            text: ' Separator',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      ],
    ),
  );
}
