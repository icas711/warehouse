// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TokenEvent {
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TokenSignInEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenSignInEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenSignInEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenEventCopyWith<TokenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenEventCopyWith<$Res> {
  factory $TokenEventCopyWith(
          TokenEvent value, $Res Function(TokenEvent) then) =
      _$TokenEventCopyWithImpl<$Res, TokenEvent>;
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class _$TokenEventCopyWithImpl<$Res, $Val extends TokenEvent>
    implements $TokenEventCopyWith<$Res> {
  _$TokenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenSignInEventFetchImplCopyWith<$Res>
    implements $TokenEventCopyWith<$Res> {
  factory _$$TokenSignInEventFetchImplCopyWith(
          _$TokenSignInEventFetchImpl value,
          $Res Function(_$TokenSignInEventFetchImpl) then) =
      __$$TokenSignInEventFetchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$TokenSignInEventFetchImplCopyWithImpl<$Res>
    extends _$TokenEventCopyWithImpl<$Res, _$TokenSignInEventFetchImpl>
    implements _$$TokenSignInEventFetchImplCopyWith<$Res> {
  __$$TokenSignInEventFetchImplCopyWithImpl(_$TokenSignInEventFetchImpl _value,
      $Res Function(_$TokenSignInEventFetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$TokenSignInEventFetchImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TokenSignInEventFetchImpl implements TokenSignInEventFetch {
  const _$TokenSignInEventFetchImpl(
      {required this.login, required this.password});

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'TokenEvent.fetch(login: $login, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenSignInEventFetchImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenSignInEventFetchImplCopyWith<_$TokenSignInEventFetchImpl>
      get copyWith => __$$TokenSignInEventFetchImplCopyWithImpl<
          _$TokenSignInEventFetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) fetch,
  }) {
    return fetch(login, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? fetch,
  }) {
    return fetch?.call(login, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(login, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TokenSignInEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenSignInEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenSignInEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class TokenSignInEventFetch implements TokenEvent {
  const factory TokenSignInEventFetch(
      {required final String login,
      required final String password}) = _$TokenSignInEventFetchImpl;

  @override
  String get login;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$TokenSignInEventFetchImplCopyWith<_$TokenSignInEventFetchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TokenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Token token) signIn,
    required TResult Function() signOut,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Token token)? signIn,
    TResult? Function()? signOut,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Token token)? signIn,
    TResult Function()? signOut,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TokenStateSignIn value) signIn,
    required TResult Function(TokenStateSignOut value) signOut,
    required TResult Function(TokenStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenStateSignIn value)? signIn,
    TResult? Function(TokenStateSignOut value)? signOut,
    TResult? Function(TokenStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenStateSignIn value)? signIn,
    TResult Function(TokenStateSignOut value)? signOut,
    TResult Function(TokenStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenStateCopyWith<$Res> {
  factory $TokenStateCopyWith(
          TokenState value, $Res Function(TokenState) then) =
      _$TokenStateCopyWithImpl<$Res, TokenState>;
}

/// @nodoc
class _$TokenStateCopyWithImpl<$Res, $Val extends TokenState>
    implements $TokenStateCopyWith<$Res> {
  _$TokenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TokenStateSignInImplCopyWith<$Res> {
  factory _$$TokenStateSignInImplCopyWith(_$TokenStateSignInImpl value,
          $Res Function(_$TokenStateSignInImpl) then) =
      __$$TokenStateSignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Token token});

  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class __$$TokenStateSignInImplCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$TokenStateSignInImpl>
    implements _$$TokenStateSignInImplCopyWith<$Res> {
  __$$TokenStateSignInImplCopyWithImpl(_$TokenStateSignInImpl _value,
      $Res Function(_$TokenStateSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$TokenStateSignInImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc

class _$TokenStateSignInImpl implements TokenStateSignIn {
  const _$TokenStateSignInImpl({required this.token});

  @override
  final Token token;

  @override
  String toString() {
    return 'TokenState.signIn(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenStateSignInImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenStateSignInImplCopyWith<_$TokenStateSignInImpl> get copyWith =>
      __$$TokenStateSignInImplCopyWithImpl<_$TokenStateSignInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Token token) signIn,
    required TResult Function() signOut,
    required TResult Function() error,
  }) {
    return signIn(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Token token)? signIn,
    TResult? Function()? signOut,
    TResult? Function()? error,
  }) {
    return signIn?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Token token)? signIn,
    TResult Function()? signOut,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TokenStateSignIn value) signIn,
    required TResult Function(TokenStateSignOut value) signOut,
    required TResult Function(TokenStateError value) error,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenStateSignIn value)? signIn,
    TResult? Function(TokenStateSignOut value)? signOut,
    TResult? Function(TokenStateError value)? error,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenStateSignIn value)? signIn,
    TResult Function(TokenStateSignOut value)? signOut,
    TResult Function(TokenStateError value)? error,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class TokenStateSignIn implements TokenState {
  const factory TokenStateSignIn({required final Token token}) =
      _$TokenStateSignInImpl;

  Token get token;
  @JsonKey(ignore: true)
  _$$TokenStateSignInImplCopyWith<_$TokenStateSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenStateSignOutImplCopyWith<$Res> {
  factory _$$TokenStateSignOutImplCopyWith(_$TokenStateSignOutImpl value,
          $Res Function(_$TokenStateSignOutImpl) then) =
      __$$TokenStateSignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TokenStateSignOutImplCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$TokenStateSignOutImpl>
    implements _$$TokenStateSignOutImplCopyWith<$Res> {
  __$$TokenStateSignOutImplCopyWithImpl(_$TokenStateSignOutImpl _value,
      $Res Function(_$TokenStateSignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TokenStateSignOutImpl implements TokenStateSignOut {
  const _$TokenStateSignOutImpl();

  @override
  String toString() {
    return 'TokenState.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TokenStateSignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Token token) signIn,
    required TResult Function() signOut,
    required TResult Function() error,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Token token)? signIn,
    TResult? Function()? signOut,
    TResult? Function()? error,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Token token)? signIn,
    TResult Function()? signOut,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TokenStateSignIn value) signIn,
    required TResult Function(TokenStateSignOut value) signOut,
    required TResult Function(TokenStateError value) error,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenStateSignIn value)? signIn,
    TResult? Function(TokenStateSignOut value)? signOut,
    TResult? Function(TokenStateError value)? error,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenStateSignIn value)? signIn,
    TResult Function(TokenStateSignOut value)? signOut,
    TResult Function(TokenStateError value)? error,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class TokenStateSignOut implements TokenState {
  const factory TokenStateSignOut() = _$TokenStateSignOutImpl;
}

/// @nodoc
abstract class _$$TokenStateErrorImplCopyWith<$Res> {
  factory _$$TokenStateErrorImplCopyWith(_$TokenStateErrorImpl value,
          $Res Function(_$TokenStateErrorImpl) then) =
      __$$TokenStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TokenStateErrorImplCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$TokenStateErrorImpl>
    implements _$$TokenStateErrorImplCopyWith<$Res> {
  __$$TokenStateErrorImplCopyWithImpl(
      _$TokenStateErrorImpl _value, $Res Function(_$TokenStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TokenStateErrorImpl implements TokenStateError {
  const _$TokenStateErrorImpl();

  @override
  String toString() {
    return 'TokenState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TokenStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Token token) signIn,
    required TResult Function() signOut,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Token token)? signIn,
    TResult? Function()? signOut,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Token token)? signIn,
    TResult Function()? signOut,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TokenStateSignIn value) signIn,
    required TResult Function(TokenStateSignOut value) signOut,
    required TResult Function(TokenStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenStateSignIn value)? signIn,
    TResult? Function(TokenStateSignOut value)? signOut,
    TResult? Function(TokenStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenStateSignIn value)? signIn,
    TResult Function(TokenStateSignOut value)? signOut,
    TResult Function(TokenStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TokenStateError implements TokenState {
  const factory TokenStateError() = _$TokenStateErrorImpl;
}
