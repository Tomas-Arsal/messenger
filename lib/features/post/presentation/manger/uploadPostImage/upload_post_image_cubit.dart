// import 'dart:io';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
//
// part 'upload_post_image_state.dart';
//
// class UploadPostImageCubit extends Cubit<UploadPostImageState> {
//   UploadPostImageCubit() : super(UploadPostImageInitial());
//   File? profileImage;
//
//   // upload Post
//   void uploadPostImage({
//     required String dateTime,
//     required String text,
//   }) {
//     emit(SocialUploadPostsLoadingSuccess());
//     firebase_storage.FirebaseStorage.instance
//         .ref()
//         .child('posts/${Uri.file(postImage!.path).pathSegments.last}')
//         .putFile(postImage!)
//         .then((value) {
//       value.ref.getDownloadURL().then((value) {
//         createNewPost(dateTime: dateTime, text: text, postImage: value);
//         emit(SocialUploadPostsSuccess());
//       }).catchError((onError) {
//         emit(SocialUploadPostsError());
//       });
//     }).catchError((onError) {
//       emit(SocialUploadPostsError());
//     });
//   }
// }
