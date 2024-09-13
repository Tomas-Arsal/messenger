import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import '../../../../user/data/models/SocialUserModel.dart';

part 'comment_post_state.dart';

class CommentPostCubit extends Cubit<CommentPostState> {
  CommentPostCubit() : super(CommentPostInitial());
     SocialUserModel? userModel;

  // commentPost
  void commentPost(String postId) {
    FirebaseFirestore.instance
        .collection('posts')
        .doc(postId)
        .collection('comments')
        .doc(userModel!.uId)
        .set({
      'comments': true,
    }).then((value) {
      emit(commentPostsSuccess());
    }).catchError((error) {
      emit(commentPostsError(error.toString()));
    });
  }
}
