import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_exception.freezed.dart';

@freezed
class AuthException with _$AuthException {
  const factory AuthException.serverError() = _ServerError;
  const factory AuthException.unauthorized() = _Unauthorized;
  const factory AuthException.unknown() = _Unknown;
  const factory AuthException.internetConnectionUnavailable() =
  _InternetConnectionUnavailable;
  const factory AuthException.wrongLoginOrPass() =
  _WrongLoginOrPass;
}

extension AuthExceptionX on AuthException {
  String get description {
    if (this is _Unauthorized) {
      return "Sorry, your session has expired. Please sign in again";
    } else if (this is _InternetConnectionUnavailable) {
      return "Sorry, there’s a problem with your internet connection. Please check your connection and try again.";
    } else if (this is _WrongLoginOrPass) {
      return "An login or password are incorrect";
    } else {
      return "Sorry, there’s a problem with the server connection. Please try again later.";
    }
  }
  bool get isUnauthorized => this is _Unauthorized;
}