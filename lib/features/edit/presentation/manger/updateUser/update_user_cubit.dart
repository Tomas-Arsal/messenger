// import 'package:bloc/bloc.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:meta/meta.dart';
//
// import '../../../../user/data/models/SocialUserModel.dart';
//
// part 'update_user_state.dart';
//
// class UpdateUserCubit extends Cubit<UpdateUserState> {
//   UpdateUserCubit() : super(UpdateUserInitial());
//   SocialUserModel? userModel;
//
//   // update user
//   // تجديد معلومات المستخدم
//   void updateUser({
//     required String name,
//     required String phone,
//     required String bio,
//     String? image,
//     String? cover,
//   }) {
//     SocialUserModel userModel = SocialUserModel(
//       name: name,
//       phone: phone,
//       bio: bio,
//       cover: cover ?? this.userModel!.cover,
//       emailVerified: false,
//       image: image ?? this.userModel!.image,
//       uId: this.userModel!.uId,
//       email: this.userModel!.email,
//     );
//     FirebaseFirestore.instance
//         .collection('users')
//         .doc(userModel.uId)
//         .update(userModel.toMap())
//         .then((value) {
//       getUserData();
//     }).catchError((onError) {
//       emit(SocialUpdateError());
//     });
//   }
// }
