import 'package:flutter/material.dart';

postText(textcontroller){return  Expanded(
  child: TextFormField(
    controller: textcontroller,
    decoration: const InputDecoration(
      hintText: 'What your mind',
      border: InputBorder.none,
    ),
  ),
);}