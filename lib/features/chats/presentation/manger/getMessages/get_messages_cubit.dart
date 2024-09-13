// import 'package:bloc/bloc.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:meta/meta.dart';
//
// import '../../../../user/data/models/MessageModel.dart';
// import '../../../../user/data/models/SocialUserModel.dart';
//
// part 'get_messages_state.dart';
//
// class GetMessagesCubit extends Cubit<GetMessagesState> {
//   GetMessagesCubit() : super(GetMessagesInitial());
//      SocialUserModel? userModel;
//
//   // to get messages
//   List<MessageModel> message = [];
//
//   void getMessages({required String receiverId}) {
//     FirebaseFirestore.instance
//         .collection('users')
//         .doc(userModel!.uId)
//         .collection('chats')
//         .doc(receiverId)
//         .collection('message')
//         .orderBy('dateTime')
//         .snapshots()
//         .listen((event) {
//       message = [];
//
//       event.docs.forEach((element) {
//         message.add(MessageModel.fromMap(element.data()));
//       });
//
//       emit(getMessageSuccess());
//     });
//   }
// }
