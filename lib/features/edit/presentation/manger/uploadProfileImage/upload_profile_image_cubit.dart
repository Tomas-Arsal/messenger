// import 'dart:io';
//
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
//
// part 'upload_profile_image_state.dart';
//
// class UploadProfileImageCubit extends Cubit<UploadProfileImageState> {
//   UploadProfileImageCubit() : super(UploadProfileImageInitial());
//   File? profileImage;
//
//   // upload profile
//   void uploadProfileImage({
//     required String name,
//     required String phone,
//     required String bio,
//   }) {
//     emit(SocialUploadLoadingSuccess());
//     firebase_storage.FirebaseStorage.instance
//         .ref()
//         .child('users/${Uri.file(profileImage!.path).pathSegments.last}')
//         .putFile(profileImage!)
//         .then((value) {
//       //  emit(SocialGetUploadProfileSuccess());
//       value.ref.getDownloadURL().then((value) {
//         // print(value) ;
//         // emit(SocialGetUploadImageSuccess());
//         updateUser(name: name, phone: phone, bio: bio, image: value);
//       }).catchError((onError) {
//         emit(SocialGetUploadImageLoadingError());
//       });
//     }).catchError((onError) {
//       emit(SocialGetUploadProfileLoadingError());
//     });
//   }
// }
