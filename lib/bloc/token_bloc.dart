import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warehouse/models/token.dart';
import 'package:warehouse/repositories/token_repo.dart';

part 'token_bloc.freezed.dart';
//part 'token_bloc.g.dart';
part 'token_event.dart';
part 'token_state.dart';


class TokenBloc extends Bloc<TokenEvent, TokenState> {
  final TokenRepo tokenRepo;

  TokenBloc({required this.tokenRepo})
      : super(
    const TokenState.signOut(),
  ) {
    on<TokenSignInEventFetch>((event, emit) async {
      emit(const TokenState.signOut());
      try {
        Token _tokenSignIn = await tokenRepo.getToken(event.login, event.password);
        emit(TokenState.signIn(token: _tokenSignIn));
      } catch (_) {
        emit(const TokenState.error());
      }
    });
  }
}