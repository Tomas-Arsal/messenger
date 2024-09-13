// import 'package:bloc/bloc.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:meta/meta.dart';
//
// import '../../../../../core/sharped/content/content.dart';
// import '../../../data/models/SocialUserModel.dart';
//
// part 'get_users_in_chat_state.dart';
//
// class GetUsersInChatCubit extends Cubit<GetUsersInChatState> {
//   GetUsersInChatCubit() : super(GetUsersInChatInitial());
//   SocialUserModel? userModel;
//   // to get users in chat
//   List<SocialUserModel> users = [];
//   void getUsersInChat() {
//     if (users.isEmpty) {
//       emit(getusersInChatLoadingSuccess());
//
//       FirebaseFirestore.instance.collection('users').get().then((value) {
//         value.docs.forEach((element) {
//           if (element.data()[uId] != userModel!.uId)
//             users.add(SocialUserModel.fromMap(element.data()));
//         });
//         emit(getusersInChatSuccess());
//       }).catchError((onError) {
//         emit(getusersInChatError());
//       });
//     }
//   }
// }
