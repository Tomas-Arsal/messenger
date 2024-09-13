import 'package:flutter/material.dart';

Widget imageUser(model) {
  return Card(
    elevation: 0.0,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(
        model.image,
      ),
    ),
  );
}
