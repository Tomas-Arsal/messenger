

abstract class LoginStates {}

class InitLoginState extends LoginStates {}

class ChangePassword extends LoginStates {}

class LoadingLogIn extends LoginStates {}

class SuccessLogIn extends LoginStates {
  final String uId ;
  SuccessLogIn(this.uId);
}

class ErrorLogIn extends LoginStates {
  final String error;
  ErrorLogIn({required this.error});
}

class LoadingRegister extends LoginStates {}

class SuccessRegister extends LoginStates {
  final String uId ;
  SuccessRegister(this.uId);
}

class ErrorRegister extends LoginStates {
  final String error;
  ErrorRegister({required this.error});
}
// class LoadingLogIn extends LoginStates{}
