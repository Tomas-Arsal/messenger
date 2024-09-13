import '../../../features/login/presentation/views/social_login.dart';
import '../Components/Component.dart';
import '../local/cashHelper.dart';

void signOut(context) {
  CashHelper.removeCacheData(key: 'token').then((value) {
    if (value) {
      navigateAndFinished(context, LoginScreen());
    }
  });
}

void printWrapped(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}

String? token = CashHelper.getData(key: 'token');
String? uId = CashHelper.getData(key: 'uId');
// class CacheData {
//   static String? uId;
// }