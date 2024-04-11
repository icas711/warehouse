part of 'token_bloc.dart';

@freezed
class TokenState with _$TokenState {
  const factory TokenState.signIn({required Token token}) = TokenStateSignIn;

  const factory TokenState.signOut() = TokenStateSignOut;

  const factory TokenState.error() = TokenStateError;
}
