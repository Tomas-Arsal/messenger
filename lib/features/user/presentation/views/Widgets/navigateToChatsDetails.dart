import '../../../../../core/sharped/Components/Component.dart';
import '../../../../chats/presentation/view/chatsDetailsScreen.dart';

void navigateToChatsDetails(context, model) {
  return navigateTo(
      context,
      ChatsDetilScreen(
        userModel: model,
      ));
}
