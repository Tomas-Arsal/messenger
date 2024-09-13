import 'package:flutter/material.dart';

Widget nameAandDrscritionProfile(userModel) {
  return Column(
    children: [
         Text(
          userModel.name,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
         Text(
          userModel.bio,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
      const SizedBox(
        height: 10.0,
      ),
    ],
  );
}
