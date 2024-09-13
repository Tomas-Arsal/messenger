
abstract class SocialState {}

class SocialInitial extends SocialState {}

class ChangeItemsbottom extends SocialState{}

class SocialGetUserModelSuccess extends SocialState {}

class SocialGetUserModelLoadingSuccess extends SocialState {}

class SocialGetUserModelError extends SocialState {}


class SocialNewPostState extends SocialState{}

class ProfileImageSuccess extends SocialState{}

class ProfileImageError extends SocialState{}

class CoverImageSuccess extends SocialState{}

class CoverImageError extends SocialState{}

class PostImageSuccess extends SocialState{}

class PostImageError extends SocialState{}

class SocialGetUploadProfileLoadingSuccess extends SocialState{}

class SocialGetUploadProfileSuccess extends SocialState{}

class SocialGetUploadProfileLoadingError extends SocialState{}

class SocialGetUploadImageLoadingSuccess extends SocialState{}

class SocialGetUploadImageSuccess extends SocialState{}

class SocialGetUploadImageLoadingError extends SocialState{}

class SocialGetUploadcoverLoadingSuccess extends SocialState{}

class SocialGetUploadcoverSuccess extends SocialState{}

class SocialGetUploadcoverLoadingError extends SocialState{}

class SocialGetUplocoverLoadingSuccess extends SocialState{}

class SocialGetUplocoverSuccess extends SocialState{}

class SocialGetUplocoverError extends SocialState{}

class SocialUploadLoadingSuccess extends SocialState{}

class SocialUpdateSuccess extends SocialState{}

class SocialUpdateError extends SocialState{}

// state of upload posts

class SocialUploadPostsLoadingSuccess extends SocialState{}

class SocialUploadPostsSuccess extends SocialState{}

class SocialUploadPostsError extends SocialState{}
// upload chat image
class SocialUploadChatImageLoadingSuccess extends SocialState{}

class SocialUploadChatImageSuccess extends SocialState{}

class SocialUploadChatImageError extends SocialState{}

// state of creat new posts

class createNewPostsLoadingSuccess extends SocialState{}

class createNewPostsSuccess extends SocialState{}

class createNewPostsError extends SocialState{}

// to remove post
class removePostImage extends SocialState{}

// to get Posts

class getPostsLoadingSuccess extends SocialState{}

class getPostsSuccess extends SocialState{}

class getPostsError extends SocialState{}

// to get images chats
class getPostsChatImagesLoadingSuccess extends SocialState{}

class getPostsChatImagesSuccess extends SocialState{}

class getPostsChatImagesError extends SocialState{}

// posts Id for likes

class LikePostsSuccess extends SocialState{}

class LikePostsError extends SocialState{
  final String error ;
  LikePostsError(this.error) ;

}
// posts Id for  comment

class commentPostsSuccess extends SocialState{}

class commentPostsError extends SocialState{
  final String error ;
  commentPostsError(this.error) ;

}
//For get likes

class getLikePostsSuccess extends SocialState{}

class getLikePostsError extends SocialState{
  final String error ;
  getLikePostsError(this.error) ;
}
// to get users in chat
class getusersInChatLoadingSuccess extends SocialState{}

class getusersInChatSuccess extends SocialState{}

class getusersInChatError extends SocialState{}

// to send message
class  sendMessageSuccess extends SocialState{}

class sendMessageError extends SocialState{
  final String error ;
  sendMessageError(this.error) ;

}

// to receive message
class receiveMessageSuccess extends SocialState{}

class receiveMessageError extends SocialState{
  final String error ;
  receiveMessageError(this.error) ;

}

class getMessageSuccess extends SocialState{}

// for message photo

class  sendMessagePhotoSuccess extends SocialState{}

class sendMessagePhotoError extends SocialState{}

class removeMessageImage extends SocialState{}