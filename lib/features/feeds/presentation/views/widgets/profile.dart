import 'package:flutter/cupertino.dart';
import 'dateOfPost.dart';
import 'nameOfPoster.dart';

Widget profile(model) {
 return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        nameOfPoster(model),
        const SizedBox(
          height: 5.0,
        ),
        dateOfPost(model) ,
      ],
    ),
  );
}