import 'package:flutter/cupertino.dart';

import 'add_comment.dart';
import 'add_like.dart';

Widget addCommentAndLike (context , index){
return  Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AddLike(context, index) ,
        AddComment(context, index) ,
      ],
    ),
  );
}