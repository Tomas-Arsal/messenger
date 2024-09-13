import 'package:flutter/cupertino.dart';
import 'imageUser.dart';
import 'nameUser.dart';

Widget profileUser(model) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      imageUser(model),
      const SizedBox(
        width: 10.0,
      ),
      nameUser(model),
    ],
  );
}
