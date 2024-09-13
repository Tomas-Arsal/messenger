import 'package:flutter/cupertino.dart';

Widget coverProfile (userModel){
    return      Container(
      width: double.infinity,
      height: 190.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        image:  DecorationImage(
          image: NetworkImage(
            userModel!.cover,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

