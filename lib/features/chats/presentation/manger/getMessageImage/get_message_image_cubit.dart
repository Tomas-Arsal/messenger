// import 'dart:io';
//
// import 'package:bloc/bloc.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:meta/meta.dart';
//
// part 'get_message_image_state.dart';
//
// class GetMessageImageCubit extends Cubit<GetMessageImageState> {
//   GetMessageImageCubit() : super(GetMessageImageInitial());
//   final ImagePicker _picker = ImagePicker();
//
//   // for get message photo
//   File? messageImage;
//   Future<void> getMessageImage() async {
//     final XFile? pickedImage =
//     await _picker.pickImage(source: ImageSource.gallery);
//
//     if (pickedImage != null) {
//       messageImage = File(pickedImage.path);
//       emit(sendMessagePhotoSuccess());
//     } else {
//       emit(sendMessagePhotoError());
//     }
//   }
// }
