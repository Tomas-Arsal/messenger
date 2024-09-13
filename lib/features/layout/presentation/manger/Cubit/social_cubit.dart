import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:messenger/features/layout/presentation/manger/Cubit/social_state.dart';
import '../../../../../core/sharped/content/content.dart';
import '../../../../feeds/presentation/views/feeds.dart';
import '../../../../home/presentation/views/chats.dart';
import '../../../../setting/presentation/views/settings.dart';
import '../../../../user/data/models/MessageAndPhotoModel.dart';
import '../../../../user/data/models/MessageModel.dart';
import '../../../../user/data/models/PostModel.dart';
import '../../../../user/data/models/SocialUserModel.dart';
import '../../../../post/presentation/view/post.dart';
import '../../../../user/presentation/views/users.dart';

class SocialCubit extends Cubit<SocialState> {
  SocialCubit() : super(SocialInitial());

  static SocialCubit get(context) => BlocProvider.of(context);

  int CurrentIndex = 0;

  List<Widget> screens = [
    FeedsScreen(),
    ChatsScreen(),
    PostScreen(),
    UsersScreen(),
    SettingsScreen(),
  ];

  List<String> titles = [
    'Home Screen',
    'Chasts Screen',
    'Posts Screen',
    'Users Screen',
    'Settings Screen',
  ];
  List<BottomNavigationBarItem> BottomItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.chat),
      label: 'chats',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.upload_file_outlined),
      label: 'posts',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.supervised_user_circle),
      label: 'users',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'settings',
    ),
  ];

  void changeCurrentIndex(int index) {
    if (index == 1) {
      getUsersInChat();
    }
    if (index == 2) {
      emit(SocialNewPostState());
    } else {
      CurrentIndex = index;
      emit(ChangeItemsbottom());
    }
  }

  // هنا جبنا معلومات المستخدم من ال firebase
  SocialUserModel? userModel;

  void getUserData() {
    emit(SocialGetUserModelLoadingSuccess());

    FirebaseFirestore.instance.collection('users').doc(uId).get().then((value) {
      userModel = SocialUserModel.fromMap(value.data());
      //  print(value.data());
      emit(SocialGetUserModelSuccess());
    }).catchError((onError) {
      print(onError.toString());
      emit(SocialGetUserModelError());
    });
  }

  // image picker (profile / cover / post)
  final ImagePicker _picker = ImagePicker();

  // الحصول على صوره ال  profile

  File? profileImage;

  Future<void> getProfileImage() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      profileImage = File(pickedImage.path);
      //print(pickedImage.path) ;
      emit(ProfileImageSuccess());
    } else {
      emit(ProfileImageError());
    }
  }

  // الحصول على  صوره ال  cover
  File? coverImage;

  Future<void> getCoverImage() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      coverImage = File(pickedImage.path);
      emit(CoverImageSuccess());
    } else {
      emit(CoverImageError());
    }
  }

  // upload profile
  void uploadProfileImage({
    required String name,
    required String phone,
    required String bio,
  }) {
    emit(SocialUploadLoadingSuccess());
    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('users/${Uri.file(profileImage!.path).pathSegments.last}')
        .putFile(profileImage!)
        .then((value) {
      //  emit(SocialGetUploadProfileSuccess());
      value.ref.getDownloadURL().then((value) {
        // print(value) ;
        // emit(SocialGetUploadImageSuccess());
        updateUser(name: name, phone: phone, bio: bio, image: value);
      }).catchError((onError) {
        emit(SocialGetUploadImageLoadingError());
      });
    }).catchError((onError) {
      emit(SocialGetUploadProfileLoadingError());
    });
  }

  // upload cover

  void uploadcoverImage({
    required String name,
    required String phone,
    required String bio,
  }) {
    emit(SocialUploadLoadingSuccess());
    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('users/${Uri.file(coverImage!.path).pathSegments.last}')
        .putFile(coverImage!)
        .then((value) {
      // emit(SocialGetUploadcoverSuccess());
      value.ref.getDownloadURL().then((value) {
        //  emit(SocialGetUplocoverSuccess());
        updateUser(name: name, phone: phone, bio: bio, cover: value);
      }).catchError((onError) {
        emit(SocialGetUplocoverSuccess());
      });
    }).catchError((onError) {
      emit(SocialGetUploadcoverLoadingError());
    });
  }

  // void updateUserImage({
  //   required String name,
  //   required String phone,
  //   required String bio,
  // }) {
  //   emit(SocialUpdateLoadingSuccess());
  //   if (coverImage != null) {
  //     uploadcoverImage();
  //   }
  //   else if (profileImage != null) {
  //     uploadProfileImage();
  //   }
  //   else if (coverImage != null && profileImage != null){}
  //   else {
  //    // updateUser(name: name, phone: phone, bio: bio);
  //   }
  // }

  // update user
  // تجديد معلومات المستخدم
  void updateUser({
    required String name,
    required String phone,
    required String bio,
    String? image,
    String? cover,
  }) {
    SocialUserModel userModel = SocialUserModel(
      name: name,
      phone: phone,
      bio: bio,
      cover: cover ?? this.userModel!.cover,
      emailVerified: false,
      image: image ?? this.userModel!.image,
      uId: this.userModel!.uId,
      email: this.userModel!.email,
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(userModel.uId)
        .update(userModel.toMap())
        .then((value) {
      getUserData();
    }).catchError((onError) {
      emit(SocialUpdateError());
    });
  }


  // to get posts image
  File? postImage;

  Future<void> getPostImage() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      postImage = File(pickedImage.path);
      emit(PostImageSuccess());
    } else {
      emit(PostImageError());
    }
  }

  // to remove post image

  void removepostimage() {
    postImage = null;
    emit(removePostImage());
  }

  // upload Post
  void uploadPostImage({
    required String dateTime,
    required String text,
  }) {
    emit(SocialUploadPostsLoadingSuccess());
    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('posts/${Uri.file(postImage!.path).pathSegments.last}')
        .putFile(postImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        createNewPost(dateTime: dateTime, text: text, postImage: value);
        emit(SocialUploadPostsSuccess());
      }).catchError((onError) {
        emit(SocialUploadPostsError());
      });
    }).catchError((onError) {
      emit(SocialUploadPostsError());
    });
  }

  // to create post
  void createNewPost({
    required String dateTime,
    required String text,
    String? postImage,
  }) {
    emit(createNewPostsLoadingSuccess());
    PostModel userModel = PostModel(
      name: this.userModel!.name,
      image: this.userModel!.image,
      uId: this.userModel!.uId,
      dateTime: dateTime,
      text: text,
      postImage: postImage ?? '',
    );
    FirebaseFirestore.instance
        .collection('posts')
        .add(userModel.toMap())
        .then((value) {
      emit(createNewPostsSuccess());
    }).catchError((onError) {
      emit(createNewPostsError());
    });
  }


  // function send message without photo
  void sendMessage({
    required String text,
    required String receiverId,
    required String dateTime,
  }) {
    MessageModel model = MessageModel(
      text: text,
      dateTime: dateTime,
      receiverId: receiverId,
      senderId: userModel!.uId,
    );
    // to send your message to receiver

    FirebaseFirestore.instance
        .collection('users')
        .doc(userModel!.uId)
        .collection('chats')
        .doc(receiverId)
        .collection('message')
        .add(model.toMap())
        .then((value) {
      emit(sendMessageSuccess());
    }).catchError((error) {
      emit(sendMessageError(error));
    });
    // to receiver send your message to  me

    FirebaseFirestore.instance
        .collection('users')
        .doc(receiverId)
        .collection('chats')
        .doc(userModel!.uId)
        .collection('message')
        .add(model.toMap())
        .then((value) {
      emit(receiveMessageSuccess());
    }).catchError((error) {
      emit(receiveMessageError(error));
    });
  }


  // for get message photo
  File? messageImage;
  Future<void> getMessageImage() async {
    final XFile? pickedImage =
    await _picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      messageImage = File(pickedImage.path);
      emit(sendMessagePhotoSuccess());
    } else {
      emit(sendMessagePhotoError());
    }
  }



  // to remove message image
  void removemessageimage() {
    messageImage = null;
    emit(removeMessageImage());
  }

  // upload Post
  void uploadChatImage({
    String? text,
    required String receiverId,
    required String dateTime,
    required String photo
  }) {
    emit(SocialUploadChatImageLoadingSuccess());
    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('chats/${Uri.file(messageImage!.path).pathSegments.last}')
        .putFile(messageImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        sendMessage( receiverId: receiverId, dateTime: dateTime, text: '');
        emit(sendMessageSuccess());
      }).catchError((onError) {
        emit(SocialUploadChatImageError());
      });
    }).catchError((onError) {
      emit(SocialUploadChatImageError());
    });
  }

// function send message && photo
  void sendPhotoChat({
    String? text,
    required String receiverId,
    required String dateTime,
    required String photo ,
  }) {
    MessageAndPhotoModel model = MessageAndPhotoModel(
      text: text?? '',
      dateTime: dateTime,
      receiverId: receiverId,
      senderId: userModel!.uId,
      photo: photo ,
    );
    // to send your message to receiver

    FirebaseFirestore.instance
        .collection('users')
        .doc(userModel!.uId)
        .collection('chats')
        .doc(receiverId)
        .collection('message')
        .add(model.toMap())
        .then((value) {
      emit(sendMessageSuccess());
    }).catchError((error) {
      emit(sendMessageError(error));
    });
    // to receiver send your message to  me

    FirebaseFirestore.instance
        .collection('users')
        .doc(receiverId)
        .collection('chats')
        .doc(userModel!.uId)
        .collection('message')
        .add(model.toMap())
        .then((value) {
      emit(receiveMessageSuccess());
    }).catchError((error) {
      emit(receiveMessageError(error));
    });
  }


  List<PostModel> posts = [];

  List<MessageAndPhotoModel> photo = [];

  List<String> postsId = [];

  List<int> likes = [];

  List<int> comments = [];


  // to get posts im the feed screen
  void getPosts() {
    emit(getPostsLoadingSuccess());
    FirebaseFirestore.instance.collection('posts').get().then((value) {
      value.docs.forEach((element) {
        element.reference.collection('likes').get().then((value) {
          likes.add(value.docs.length);
          postsId.add(element.id);
          posts.add(PostModel.fromMap(element.data()));
          emit(getLikePostsSuccess());
        }).catchError((error) {
          emit(getLikePostsError(error));
        });
      });
      emit(getPostsSuccess());
    }).catchError((onError) {
      emit(getPostsError());
    });
  }

  // to get images im the chat screen
  void getPostsChatImages() {
    emit(getPostsChatImagesLoadingSuccess());
    FirebaseFirestore.instance.collection('photo').get().then((value) {
      value.docs.forEach((element) {
        photo.add(MessageAndPhotoModel.fromMap(element.data()));
      });
      emit(getPostsChatImagesSuccess());
    }).catchError((onError) {
      emit(getPostsChatImagesError());
    });
  }


  // likePost
  void likePost(String postId) {
    FirebaseFirestore.instance
        .collection('posts')
        .doc(postId)
        .collection('likes')
        .doc(userModel!.uId)
        .set({
      'like': true,
    }).then((value) {
      emit(LikePostsSuccess());
    }).catchError((error) {
      emit(LikePostsError(error.toString()));
    });
  }
  // commentPost
  void commentPost(String postId) {
    FirebaseFirestore.instance
        .collection('posts')
        .doc(postId)
        .collection('comments')
        .doc(userModel!.uId)
        .set({
      'comments': true,
    }).then((value) {
      emit(commentPostsSuccess());
    }).catchError((error) {
      emit(commentPostsError(error.toString()));
    });
  }

  // to get users in chat
  List<SocialUserModel> users = [];

  void getUsersInChat() {
    if (users.isEmpty) {
      emit(getusersInChatLoadingSuccess());

    FirebaseFirestore.instance.collection('users').get().then((value) {
      value.docs.forEach((element) {
        if (element.data()[uId] != userModel!.uId)
          users.add(SocialUserModel.fromMap(element.data()));
      });
      emit(getusersInChatSuccess());
    }).catchError((onError) {
      emit(getusersInChatError());
    });
  }
  }

  // to get messages
  List<MessageModel> message = [];

  void getMessages({required String receiverId}) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(userModel!.uId)
        .collection('chats')
        .doc(receiverId)
        .collection('message')
        .orderBy('dateTime')
        .snapshots()
        .listen((event) {
      message = [];

      event.docs.forEach((element) {
        message.add(MessageModel.fromMap(element.data()));
      });

      emit(getMessageSuccess());
    });
  }
}
