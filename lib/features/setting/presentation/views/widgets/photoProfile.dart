import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget photoProfile(userModel){
  return   Container(
    margin: const EdgeInsets.only(
      top: 100,
    ),
    child:  CircleAvatar(
      radius: 80,
      backgroundImage: NetworkImage(
        userModel.image,
      ),
    ),
  );
}