import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../user/data/models/PostModel.dart';

Widget nameOfPoster ( PostModel model){
    return    Row(
      children: [
        Text(
          model.name,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 5.0,
        ),
        const Icon(
          Icons.check_circle,
          color: Colors.cyan,
          size: 16.0,
        ),
      ],
    );
  }

