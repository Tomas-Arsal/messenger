import 'package:flutter/material.dart';

Widget writeMessage(textController){ return Expanded(
  child: TextFormField(
    controller: textController,
    decoration: const InputDecoration(
      border: InputBorder.none,
      hintText: 'type your message here ...',
    ),
  ),
);}