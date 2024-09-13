import 'package:flutter/material.dart';

import '../../../../user/data/models/PostModel.dart';

Widget postOfText (PostModel model , context){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      model.text,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(fontWeight: FontWeight.w900),
    ),
  );
}