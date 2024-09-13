import 'package:flutter/material.dart';

import '../../../../user/data/models/PostModel.dart';

Widget dateOfPost(PostModel model) {
  return Text(
    model.dateTime,
    style: const TextStyle(
      color: Colors.grey,
    ),
  );
}
