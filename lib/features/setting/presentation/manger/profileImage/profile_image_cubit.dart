// import 'dart:io';
// import 'package:bloc/bloc.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:meta/meta.dart';
//
// part 'profile_image_state.dart';
//
// class ProfileImageCubit extends Cubit<ProfileImageState> {
//   ProfileImageCubit() : super(ProfileImageInitial());
//   // image picker (profile / cover / post)
//   final ImagePicker _picker = ImagePicker();
//
//   // الحصول على صوره ال  profile
//
//   File? profileImage;
//
//   Future<void> getProfileImage() async {
//     final XFile? pickedImage =
//     await _picker.pickImage(source: ImageSource.gallery);
//
//     if (pickedImage != null) {
//       profileImage = File(pickedImage.path);
//       //print(pickedImage.path) ;
//       emit(ProfileImageSuccess());
//     } else {
//       emit(ProfileImageError());
//     }
//   }
// }
