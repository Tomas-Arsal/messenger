import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import '../../../../user/data/models/SocialUserModel.dart';

part 'like_post_state.dart';

class LikePostCubit extends Cubit<LikePostState> {
  LikePostCubit() : super(LikePostInitial());
    SocialUserModel? userModel;

  // likePost
  void likePost(String postId) {
    FirebaseFirestore.instance
        .collection('posts')
        .doc(postId)
        .collection('likes')
        .doc(userModel!.uId)
        .set({
      'like': true,
    }).then((value) {
      emit(LikePostsSuccess());
    }).catchError((error) {
      emit(LikePostsError(error.toString()));
    });
  }
}
