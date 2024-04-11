import 'package:dartz/dartz.dart';
import 'package:warehouse/models/auth_exception.dart';
import 'package:warehouse/models/token.dart';
abstract class AuthInterface {
  Future<Either<AuthException, Token>> register(String email, String pass, String confirmPass);
  Future<Either<AuthException, Token>> login(String email, String pass);
  Future<Either<AuthException, Unit>> logout(String idToken);
  Future<Either<AuthException, Token>> refreshToken(String refreshToken);
}