// import 'package:bloc/bloc.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:meta/meta.dart';
//
// import '../../../../user/data/models/MessageAndPhotoModel.dart';
// import '../../../../user/data/models/PostModel.dart';
//
// part 'get_posts_state.dart';
//
// class GetPostsCubit extends Cubit<GetPostsState> {
//   GetPostsCubit() : super(GetPostsInitial());
//   List<PostModel> posts = [];
//
//   List<MessageAndPhotoModel> photo = [];
//
//   List<String> postsId = [];
//
//   List<int> likes = [];
//
//   List<int> comments = [];
//
//   // to get posts im the feed screen
//   void getPosts() {
//     emit(getPostsLoadingSuccess());
//     FirebaseFirestore.instance.collection('posts').get().then((value) {
//       value.docs.forEach((element) {
//         element.reference.collection('likes').get().then((value) {
//           likes.add(value.docs.length);
//           postsId.add(element.id);
//           posts.add(PostModel.fromMap(element.data()));
//           emit(getLikePostsSuccess());
//         }).catchError((error) {
//           emit(getLikePostsError(error));
//         });
//       });
//       emit(getPostsSuccess());
//     }).catchError((onError) {
//       emit(getPostsError());
//     });
//   }
// }
