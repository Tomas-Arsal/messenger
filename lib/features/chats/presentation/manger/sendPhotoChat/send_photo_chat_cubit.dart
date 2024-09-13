// import 'package:bloc/bloc.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:meta/meta.dart';
//
// import '../../../../user/data/models/MessageAndPhotoModel.dart';
// import '../../../../user/data/models/SocialUserModel.dart';
//
// part 'send_photo_chat_state.dart';
//
// class SendPhotoChatCubit extends Cubit<SendPhotoChatState> {
//   SendPhotoChatCubit() : super(SendPhotoChatInitial());
//    SocialUserModel? userModel;
//
//   // function send message && photo
//   void sendPhotoChat({
//     String? text,
//     required String receiverId,
//     required String dateTime,
//     required String photo ,
//   }) {
//     MessageAndPhotoModel model = MessageAndPhotoModel(
//       text: text?? '',
//       dateTime: dateTime,
//       receiverId: receiverId,
//       senderId: userModel!.uId,
//       photo: photo ,
//     );
//     // to send your message to receiver
//
//     FirebaseFirestore.instance
//         .collection('users')
//         .doc(userModel!.uId)
//         .collection('chats')
//         .doc(receiverId)
//         .collection('message')
//         .add(model.toMap())
//         .then((value) {
//       emit(sendMessageSuccess());
//     }).catchError((error) {
//       emit(sendMessageError(error));
//     });
//     // to receiver send your message to  me
//
//     FirebaseFirestore.instance
//         .collection('users')
//         .doc(receiverId)
//         .collection('chats')
//         .doc(userModel!.uId)
//         .collection('message')
//         .add(model.toMap())
//         .then((value) {
//       emit(receiveMessageSuccess());
//     }).catchError((error) {
//       emit(receiveMessageError(error));
//     });
//   }
// }
