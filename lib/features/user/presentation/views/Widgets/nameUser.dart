import 'package:flutter/material.dart';

Widget nameUser(model) {
  return Text(
    model.name,
    style: const TextStyle(
      height: 2.9,
      color: Colors.black,
      fontWeight: FontWeight.w900,
    ),
  );
}
