// import 'dart:io';
//
// import 'package:bloc/bloc.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:meta/meta.dart';
//
// part 'get_post_image_state.dart';
//
// class GetPostImageCubit extends Cubit<GetPostImageState> {
//   GetPostImageCubit() : super(GetPostImageInitial());
//   // to get posts image
//   File? postImage;
//   final ImagePicker _picker = ImagePicker();
//   Future<void> getPostImage() async {
//     final XFile? pickedImage =
//     await _picker.pickImage(source: ImageSource.gallery);
//
//     if (pickedImage != null) {
//       postImage = File(pickedImage.path);
//       emit(PostImageSuccess());
//     } else {
//       emit(PostImageError());
//     }
//   }
// }
