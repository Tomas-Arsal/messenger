import 'package:flutter/cupertino.dart';

import '../../../../user/data/models/PostModel.dart';

Widget postOfImage (  PostModel model){

    return
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 150.0,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                model.postImage,
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      );
  }

