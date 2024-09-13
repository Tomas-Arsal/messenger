// import 'dart:io';
//
// import 'package:bloc/bloc.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:meta/meta.dart';
//
// import '../../../../../core/constants.dart';
//
// part 'cover_image_state.dart';
//
// class CoverImageCubit extends Cubit<CoverImageState> {
//   CoverImageCubit() : super(CoverImageInitial());
//
//   // image picker (profile / cover / post)
//   final ImagePicker _picker = ImagePicker();
//
//   // الحصول على  صوره ال  cover
//
//   Future<void> getCoverImage() async {
//     final XFile? pickedImage =
//         await _picker.pickImage(source: ImageSource.gallery);
//
//     if (pickedImage != null) {
//       coverImage = File(pickedImage.path);
//       emit(CoverImageSuccess());
//     } else {
//       emit(CoverImageError());
//     }
//   }
// }
