
abstract class RegisterStates {}

class InitRegisterState extends RegisterStates {}

class ChangeRegisterPassword extends RegisterStates {}

class LoadingRegister extends RegisterStates {}

class SuccessRegister extends RegisterStates {
  // final ShopLoginModel loginModel;
  // SuccessRegister(this.loginModel);
}

class ErrorRegister extends RegisterStates {
  final String error;
  ErrorRegister({required this.error});
}


class LoadingUserCreate extends RegisterStates {}

class SuccessUserCreate extends RegisterStates {
  // final ShopLoginModel loginModel;
  // SuccessRegister(this.loginModel);
}

class ErrorUserCreate extends RegisterStates {
  final String error;
  ErrorUserCreate({required this.error});
}
