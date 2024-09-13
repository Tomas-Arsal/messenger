// import 'dart:io';
//
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
//
// part 'uploadcoverimage_state.dart';
//
// class UploadcoverimageCubit extends Cubit<UploadcoverimageState> {
//   UploadcoverimageCubit() : super(UploadcoverimageInitial());
//   File? coverImage;
//
//   // upload cover
//   void uploadcoverImage({
//     required String name,
//     required String phone,
//     required String bio,
//   }) {
//     emit(SocialUpdateLoadingSuccess());
//     firebase_storage.FirebaseStorage.instance
//         .ref()
//         .child('users/${Uri.file(coverImage!.path).pathSegments.last}')
//         .putFile(coverImage!)
//         .then((value) {
//       // emit(SocialGetUploadcoverSuccess());
//       value.ref.getDownloadURL().then((value) {
//         //  emit(SocialGetUplocoverSuccess());
//         updateUser(name: name, phone: phone, bio: bio, cover: value);
//       }).catchError((onError) {
//         emit(SocialGetUplocoverSuccess());
//       });
//     }).catchError((onError) {
//       emit(SocialGetUploadcoverLoadingError());
//     });
//   }
// }
