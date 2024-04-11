part of 'token_bloc.dart';

@freezed
class TokenEvent with _$TokenEvent{
  const factory TokenEvent.fetch({
    required String login,
    required String password,
  })= TokenSignInEventFetch;
}