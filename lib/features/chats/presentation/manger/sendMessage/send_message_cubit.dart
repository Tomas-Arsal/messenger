// import 'package:bloc/bloc.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:meta/meta.dart';
//
// import '../../../../user/data/models/MessageModel.dart';
// import '../../../../user/data/models/SocialUserModel.dart';
//
// part 'send_message_state.dart';
//
// class SendMessageCubit extends Cubit<SendMessageState> {
//   SendMessageCubit() : super(SendMessageInitial());
//   SocialUserModel? userModel;
//
//   // function send message without photo
//   void sendMessage({
//     required String text,
//     required String receiverId,
//     required String dateTime,
//   }) {
//     MessageModel model = MessageModel(
//       text: text,
//       dateTime: dateTime,
//       receiverId: receiverId,
//       senderId: userModel!.uId,
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
