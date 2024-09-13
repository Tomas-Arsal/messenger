import 'package:flutter/cupertino.dart';
import '../../../../user/data/models/PostModel.dart';
import 'dateOfPost.dart';
import 'nameOfPoster.dart';

Widget posterImageAndText (PostModel model){
    return    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          // nameOfPoster
          nameOfPoster( model) ,
          const SizedBox(
            height: 5.0,
          ),
          // dateOfPost
          dateOfPost(model) ,
        ],
      ),
    );
  }

