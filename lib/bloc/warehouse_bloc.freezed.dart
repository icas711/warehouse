// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WarehouseEvent {
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  String get sortBy => throw _privateConstructorUsedError;
  String get sortOrder => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize, String sortBy,
            String sortOrder, String token)
        fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize, String sortBy, String sortOrder,
            String token)?
        fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize, String sortBy, String sortOrder,
            String token)?
        fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WarehouseEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WarehouseEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WarehouseEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WarehouseEventCopyWith<WarehouseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseEventCopyWith<$Res> {
  factory $WarehouseEventCopyWith(
          WarehouseEvent value, $Res Function(WarehouseEvent) then) =
      _$WarehouseEventCopyWithImpl<$Res, WarehouseEvent>;
  @useResult
  $Res call(
      {int page, int pageSize, String sortBy, String sortOrder, String token});
}

/// @nodoc
class _$WarehouseEventCopyWithImpl<$Res, $Val extends WarehouseEvent>
    implements $WarehouseEventCopyWith<$Res> {
  _$WarehouseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? sortBy = null,
    Object? sortOrder = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseEventFetchImplCopyWith<$Res>
    implements $WarehouseEventCopyWith<$Res> {
  factory _$$WarehouseEventFetchImplCopyWith(_$WarehouseEventFetchImpl value,
          $Res Function(_$WarehouseEventFetchImpl) then) =
      __$$WarehouseEventFetchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page, int pageSize, String sortBy, String sortOrder, String token});
}

/// @nodoc
class __$$WarehouseEventFetchImplCopyWithImpl<$Res>
    extends _$WarehouseEventCopyWithImpl<$Res, _$WarehouseEventFetchImpl>
    implements _$$WarehouseEventFetchImplCopyWith<$Res> {
  __$$WarehouseEventFetchImplCopyWithImpl(_$WarehouseEventFetchImpl _value,
      $Res Function(_$WarehouseEventFetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? sortBy = null,
    Object? sortOrder = null,
    Object? token = null,
  }) {
    return _then(_$WarehouseEventFetchImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WarehouseEventFetchImpl implements WarehouseEventFetch {
  _$WarehouseEventFetchImpl(
      {required this.page,
      required this.pageSize,
      required this.sortBy,
      required this.sortOrder,
      required this.token});

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final String sortBy;
  @override
  final String sortOrder;
  @override
  final String token;

  @override
  String toString() {
    return 'WarehouseEvent.fetch(page: $page, pageSize: $pageSize, sortBy: $sortBy, sortOrder: $sortOrder, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseEventFetchImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, page, pageSize, sortBy, sortOrder, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseEventFetchImplCopyWith<_$WarehouseEventFetchImpl> get copyWith =>
      __$$WarehouseEventFetchImplCopyWithImpl<_$WarehouseEventFetchImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize, String sortBy,
            String sortOrder, String token)
        fetch,
  }) {
    return fetch(page, pageSize, sortBy, sortOrder, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize, String sortBy, String sortOrder,
            String token)?
        fetch,
  }) {
    return fetch?.call(page, pageSize, sortBy, sortOrder, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize, String sortBy, String sortOrder,
            String token)?
        fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(page, pageSize, sortBy, sortOrder, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WarehouseEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WarehouseEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WarehouseEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class WarehouseEventFetch implements WarehouseEvent {
  factory WarehouseEventFetch(
      {required final int page,
      required final int pageSize,
      required final String sortBy,
      required final String sortOrder,
      required final String token}) = _$WarehouseEventFetchImpl;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  String get sortBy;
  @override
  String get sortOrder;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$WarehouseEventFetchImplCopyWith<_$WarehouseEventFetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WarehouseState _$WarehouseStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return WarehouseStateLoading.fromJson(json);
    case 'loaded':
      return WarehouseStateLoaded.fromJson(json);
    case 'saving':
      return WarehouseStateSaving.fromJson(json);
    case 'saved':
      return WarehouseStateSaved.fromJson(json);
    case 'error':
      return WarehouseStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WarehouseState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WarehouseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(WarehouseItem warehouseItemLoaded) loaded,
    required TResult Function(WarehouseItem warehouseItemSaving) saving,
    required TResult Function(WarehouseItem warehouseItemSaved) saved,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(WarehouseItem warehouseItemLoaded)? loaded,
    TResult? Function(WarehouseItem warehouseItemSaving)? saving,
    TResult? Function(WarehouseItem warehouseItemSaved)? saved,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WarehouseItem warehouseItemLoaded)? loaded,
    TResult Function(WarehouseItem warehouseItemSaving)? saving,
    TResult Function(WarehouseItem warehouseItemSaved)? saved,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WarehouseStateLoading value) loading,
    required TResult Function(WarehouseStateLoaded value) loaded,
    required TResult Function(WarehouseStateSaving value) saving,
    required TResult Function(WarehouseStateSaved value) saved,
    required TResult Function(WarehouseStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WarehouseStateLoading value)? loading,
    TResult? Function(WarehouseStateLoaded value)? loaded,
    TResult? Function(WarehouseStateSaving value)? saving,
    TResult? Function(WarehouseStateSaved value)? saved,
    TResult? Function(WarehouseStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WarehouseStateLoading value)? loading,
    TResult Function(WarehouseStateLoaded value)? loaded,
    TResult Function(WarehouseStateSaving value)? saving,
    TResult Function(WarehouseStateSaved value)? saved,
    TResult Function(WarehouseStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseStateCopyWith<$Res> {
  factory $WarehouseStateCopyWith(
          WarehouseState value, $Res Function(WarehouseState) then) =
      _$WarehouseStateCopyWithImpl<$Res, WarehouseState>;
}

/// @nodoc
class _$WarehouseStateCopyWithImpl<$Res, $Val extends WarehouseState>
    implements $WarehouseStateCopyWith<$Res> {
  _$WarehouseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WarehouseStateLoadingImplCopyWith<$Res> {
  factory _$$WarehouseStateLoadingImplCopyWith(
          _$WarehouseStateLoadingImpl value,
          $Res Function(_$WarehouseStateLoadingImpl) then) =
      __$$WarehouseStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WarehouseStateLoadingImplCopyWithImpl<$Res>
    extends _$WarehouseStateCopyWithImpl<$Res, _$WarehouseStateLoadingImpl>
    implements _$$WarehouseStateLoadingImplCopyWith<$Res> {
  __$$WarehouseStateLoadingImplCopyWithImpl(_$WarehouseStateLoadingImpl _value,
      $Res Function(_$WarehouseStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$WarehouseStateLoadingImpl implements WarehouseStateLoading {
  const _$WarehouseStateLoadingImpl({final String? $type})
      : $type = $type ?? 'loading';

  factory _$WarehouseStateLoadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseStateLoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WarehouseState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseStateLoadingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(WarehouseItem warehouseItemLoaded) loaded,
    required TResult Function(WarehouseItem warehouseItemSaving) saving,
    required TResult Function(WarehouseItem warehouseItemSaved) saved,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(WarehouseItem warehouseItemLoaded)? loaded,
    TResult? Function(WarehouseItem warehouseItemSaving)? saving,
    TResult? Function(WarehouseItem warehouseItemSaved)? saved,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WarehouseItem warehouseItemLoaded)? loaded,
    TResult Function(WarehouseItem warehouseItemSaving)? saving,
    TResult Function(WarehouseItem warehouseItemSaved)? saved,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WarehouseStateLoading value) loading,
    required TResult Function(WarehouseStateLoaded value) loaded,
    required TResult Function(WarehouseStateSaving value) saving,
    required TResult Function(WarehouseStateSaved value) saved,
    required TResult Function(WarehouseStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WarehouseStateLoading value)? loading,
    TResult? Function(WarehouseStateLoaded value)? loaded,
    TResult? Function(WarehouseStateSaving value)? saving,
    TResult? Function(WarehouseStateSaved value)? saved,
    TResult? Function(WarehouseStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WarehouseStateLoading value)? loading,
    TResult Function(WarehouseStateLoaded value)? loaded,
    TResult Function(WarehouseStateSaving value)? saving,
    TResult Function(WarehouseStateSaved value)? saved,
    TResult Function(WarehouseStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseStateLoadingImplToJson(
      this,
    );
  }
}

abstract class WarehouseStateLoading implements WarehouseState {
  const factory WarehouseStateLoading() = _$WarehouseStateLoadingImpl;

  factory WarehouseStateLoading.fromJson(Map<String, dynamic> json) =
      _$WarehouseStateLoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$WarehouseStateLoadedImplCopyWith<$Res> {
  factory _$$WarehouseStateLoadedImplCopyWith(_$WarehouseStateLoadedImpl value,
          $Res Function(_$WarehouseStateLoadedImpl) then) =
      __$$WarehouseStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WarehouseItem warehouseItemLoaded});

  $WarehouseItemCopyWith<$Res> get warehouseItemLoaded;
}

/// @nodoc
class __$$WarehouseStateLoadedImplCopyWithImpl<$Res>
    extends _$WarehouseStateCopyWithImpl<$Res, _$WarehouseStateLoadedImpl>
    implements _$$WarehouseStateLoadedImplCopyWith<$Res> {
  __$$WarehouseStateLoadedImplCopyWithImpl(_$WarehouseStateLoadedImpl _value,
      $Res Function(_$WarehouseStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouseItemLoaded = null,
  }) {
    return _then(_$WarehouseStateLoadedImpl(
      warehouseItemLoaded: null == warehouseItemLoaded
          ? _value.warehouseItemLoaded
          : warehouseItemLoaded // ignore: cast_nullable_to_non_nullable
              as WarehouseItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WarehouseItemCopyWith<$Res> get warehouseItemLoaded {
    return $WarehouseItemCopyWith<$Res>(_value.warehouseItemLoaded, (value) {
      return _then(_value.copyWith(warehouseItemLoaded: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseStateLoadedImpl implements WarehouseStateLoaded {
  const _$WarehouseStateLoadedImpl(
      {required this.warehouseItemLoaded, final String? $type})
      : $type = $type ?? 'loaded';

  factory _$WarehouseStateLoadedImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseStateLoadedImplFromJson(json);

  @override
  final WarehouseItem warehouseItemLoaded;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WarehouseState.loaded(warehouseItemLoaded: $warehouseItemLoaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseStateLoadedImpl &&
            (identical(other.warehouseItemLoaded, warehouseItemLoaded) ||
                other.warehouseItemLoaded == warehouseItemLoaded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, warehouseItemLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseStateLoadedImplCopyWith<_$WarehouseStateLoadedImpl>
      get copyWith =>
          __$$WarehouseStateLoadedImplCopyWithImpl<_$WarehouseStateLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(WarehouseItem warehouseItemLoaded) loaded,
    required TResult Function(WarehouseItem warehouseItemSaving) saving,
    required TResult Function(WarehouseItem warehouseItemSaved) saved,
    required TResult Function() error,
  }) {
    return loaded(warehouseItemLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(WarehouseItem warehouseItemLoaded)? loaded,
    TResult? Function(WarehouseItem warehouseItemSaving)? saving,
    TResult? Function(WarehouseItem warehouseItemSaved)? saved,
    TResult? Function()? error,
  }) {
    return loaded?.call(warehouseItemLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WarehouseItem warehouseItemLoaded)? loaded,
    TResult Function(WarehouseItem warehouseItemSaving)? saving,
    TResult Function(WarehouseItem warehouseItemSaved)? saved,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(warehouseItemLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WarehouseStateLoading value) loading,
    required TResult Function(WarehouseStateLoaded value) loaded,
    required TResult Function(WarehouseStateSaving value) saving,
    required TResult Function(WarehouseStateSaved value) saved,
    required TResult Function(WarehouseStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WarehouseStateLoading value)? loading,
    TResult? Function(WarehouseStateLoaded value)? loaded,
    TResult? Function(WarehouseStateSaving value)? saving,
    TResult? Function(WarehouseStateSaved value)? saved,
    TResult? Function(WarehouseStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WarehouseStateLoading value)? loading,
    TResult Function(WarehouseStateLoaded value)? loaded,
    TResult Function(WarehouseStateSaving value)? saving,
    TResult Function(WarehouseStateSaved value)? saved,
    TResult Function(WarehouseStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseStateLoadedImplToJson(
      this,
    );
  }
}

abstract class WarehouseStateLoaded implements WarehouseState {
  const factory WarehouseStateLoaded(
          {required final WarehouseItem warehouseItemLoaded}) =
      _$WarehouseStateLoadedImpl;

  factory WarehouseStateLoaded.fromJson(Map<String, dynamic> json) =
      _$WarehouseStateLoadedImpl.fromJson;

  WarehouseItem get warehouseItemLoaded;
  @JsonKey(ignore: true)
  _$$WarehouseStateLoadedImplCopyWith<_$WarehouseStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WarehouseStateSavingImplCopyWith<$Res> {
  factory _$$WarehouseStateSavingImplCopyWith(_$WarehouseStateSavingImpl value,
          $Res Function(_$WarehouseStateSavingImpl) then) =
      __$$WarehouseStateSavingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WarehouseItem warehouseItemSaving});

  $WarehouseItemCopyWith<$Res> get warehouseItemSaving;
}

/// @nodoc
class __$$WarehouseStateSavingImplCopyWithImpl<$Res>
    extends _$WarehouseStateCopyWithImpl<$Res, _$WarehouseStateSavingImpl>
    implements _$$WarehouseStateSavingImplCopyWith<$Res> {
  __$$WarehouseStateSavingImplCopyWithImpl(_$WarehouseStateSavingImpl _value,
      $Res Function(_$WarehouseStateSavingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouseItemSaving = null,
  }) {
    return _then(_$WarehouseStateSavingImpl(
      warehouseItemSaving: null == warehouseItemSaving
          ? _value.warehouseItemSaving
          : warehouseItemSaving // ignore: cast_nullable_to_non_nullable
              as WarehouseItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WarehouseItemCopyWith<$Res> get warehouseItemSaving {
    return $WarehouseItemCopyWith<$Res>(_value.warehouseItemSaving, (value) {
      return _then(_value.copyWith(warehouseItemSaving: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseStateSavingImpl implements WarehouseStateSaving {
  const _$WarehouseStateSavingImpl(
      {required this.warehouseItemSaving, final String? $type})
      : $type = $type ?? 'saving';

  factory _$WarehouseStateSavingImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseStateSavingImplFromJson(json);

  @override
  final WarehouseItem warehouseItemSaving;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WarehouseState.saving(warehouseItemSaving: $warehouseItemSaving)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseStateSavingImpl &&
            (identical(other.warehouseItemSaving, warehouseItemSaving) ||
                other.warehouseItemSaving == warehouseItemSaving));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, warehouseItemSaving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseStateSavingImplCopyWith<_$WarehouseStateSavingImpl>
      get copyWith =>
          __$$WarehouseStateSavingImplCopyWithImpl<_$WarehouseStateSavingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(WarehouseItem warehouseItemLoaded) loaded,
    required TResult Function(WarehouseItem warehouseItemSaving) saving,
    required TResult Function(WarehouseItem warehouseItemSaved) saved,
    required TResult Function() error,
  }) {
    return saving(warehouseItemSaving);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(WarehouseItem warehouseItemLoaded)? loaded,
    TResult? Function(WarehouseItem warehouseItemSaving)? saving,
    TResult? Function(WarehouseItem warehouseItemSaved)? saved,
    TResult? Function()? error,
  }) {
    return saving?.call(warehouseItemSaving);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WarehouseItem warehouseItemLoaded)? loaded,
    TResult Function(WarehouseItem warehouseItemSaving)? saving,
    TResult Function(WarehouseItem warehouseItemSaved)? saved,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(warehouseItemSaving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WarehouseStateLoading value) loading,
    required TResult Function(WarehouseStateLoaded value) loaded,
    required TResult Function(WarehouseStateSaving value) saving,
    required TResult Function(WarehouseStateSaved value) saved,
    required TResult Function(WarehouseStateError value) error,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WarehouseStateLoading value)? loading,
    TResult? Function(WarehouseStateLoaded value)? loaded,
    TResult? Function(WarehouseStateSaving value)? saving,
    TResult? Function(WarehouseStateSaved value)? saved,
    TResult? Function(WarehouseStateError value)? error,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WarehouseStateLoading value)? loading,
    TResult Function(WarehouseStateLoaded value)? loaded,
    TResult Function(WarehouseStateSaving value)? saving,
    TResult Function(WarehouseStateSaved value)? saved,
    TResult Function(WarehouseStateError value)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseStateSavingImplToJson(
      this,
    );
  }
}

abstract class WarehouseStateSaving implements WarehouseState {
  const factory WarehouseStateSaving(
          {required final WarehouseItem warehouseItemSaving}) =
      _$WarehouseStateSavingImpl;

  factory WarehouseStateSaving.fromJson(Map<String, dynamic> json) =
      _$WarehouseStateSavingImpl.fromJson;

  WarehouseItem get warehouseItemSaving;
  @JsonKey(ignore: true)
  _$$WarehouseStateSavingImplCopyWith<_$WarehouseStateSavingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WarehouseStateSavedImplCopyWith<$Res> {
  factory _$$WarehouseStateSavedImplCopyWith(_$WarehouseStateSavedImpl value,
          $Res Function(_$WarehouseStateSavedImpl) then) =
      __$$WarehouseStateSavedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WarehouseItem warehouseItemSaved});

  $WarehouseItemCopyWith<$Res> get warehouseItemSaved;
}

/// @nodoc
class __$$WarehouseStateSavedImplCopyWithImpl<$Res>
    extends _$WarehouseStateCopyWithImpl<$Res, _$WarehouseStateSavedImpl>
    implements _$$WarehouseStateSavedImplCopyWith<$Res> {
  __$$WarehouseStateSavedImplCopyWithImpl(_$WarehouseStateSavedImpl _value,
      $Res Function(_$WarehouseStateSavedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouseItemSaved = null,
  }) {
    return _then(_$WarehouseStateSavedImpl(
      warehouseItemSaved: null == warehouseItemSaved
          ? _value.warehouseItemSaved
          : warehouseItemSaved // ignore: cast_nullable_to_non_nullable
              as WarehouseItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WarehouseItemCopyWith<$Res> get warehouseItemSaved {
    return $WarehouseItemCopyWith<$Res>(_value.warehouseItemSaved, (value) {
      return _then(_value.copyWith(warehouseItemSaved: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseStateSavedImpl implements WarehouseStateSaved {
  const _$WarehouseStateSavedImpl(
      {required this.warehouseItemSaved, final String? $type})
      : $type = $type ?? 'saved';

  factory _$WarehouseStateSavedImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseStateSavedImplFromJson(json);

  @override
  final WarehouseItem warehouseItemSaved;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WarehouseState.saved(warehouseItemSaved: $warehouseItemSaved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseStateSavedImpl &&
            (identical(other.warehouseItemSaved, warehouseItemSaved) ||
                other.warehouseItemSaved == warehouseItemSaved));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, warehouseItemSaved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseStateSavedImplCopyWith<_$WarehouseStateSavedImpl> get copyWith =>
      __$$WarehouseStateSavedImplCopyWithImpl<_$WarehouseStateSavedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(WarehouseItem warehouseItemLoaded) loaded,
    required TResult Function(WarehouseItem warehouseItemSaving) saving,
    required TResult Function(WarehouseItem warehouseItemSaved) saved,
    required TResult Function() error,
  }) {
    return saved(warehouseItemSaved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(WarehouseItem warehouseItemLoaded)? loaded,
    TResult? Function(WarehouseItem warehouseItemSaving)? saving,
    TResult? Function(WarehouseItem warehouseItemSaved)? saved,
    TResult? Function()? error,
  }) {
    return saved?.call(warehouseItemSaved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WarehouseItem warehouseItemLoaded)? loaded,
    TResult Function(WarehouseItem warehouseItemSaving)? saving,
    TResult Function(WarehouseItem warehouseItemSaved)? saved,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(warehouseItemSaved);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WarehouseStateLoading value) loading,
    required TResult Function(WarehouseStateLoaded value) loaded,
    required TResult Function(WarehouseStateSaving value) saving,
    required TResult Function(WarehouseStateSaved value) saved,
    required TResult Function(WarehouseStateError value) error,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WarehouseStateLoading value)? loading,
    TResult? Function(WarehouseStateLoaded value)? loaded,
    TResult? Function(WarehouseStateSaving value)? saving,
    TResult? Function(WarehouseStateSaved value)? saved,
    TResult? Function(WarehouseStateError value)? error,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WarehouseStateLoading value)? loading,
    TResult Function(WarehouseStateLoaded value)? loaded,
    TResult Function(WarehouseStateSaving value)? saving,
    TResult Function(WarehouseStateSaved value)? saved,
    TResult Function(WarehouseStateError value)? error,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseStateSavedImplToJson(
      this,
    );
  }
}

abstract class WarehouseStateSaved implements WarehouseState {
  const factory WarehouseStateSaved(
          {required final WarehouseItem warehouseItemSaved}) =
      _$WarehouseStateSavedImpl;

  factory WarehouseStateSaved.fromJson(Map<String, dynamic> json) =
      _$WarehouseStateSavedImpl.fromJson;

  WarehouseItem get warehouseItemSaved;
  @JsonKey(ignore: true)
  _$$WarehouseStateSavedImplCopyWith<_$WarehouseStateSavedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WarehouseStateErrorImplCopyWith<$Res> {
  factory _$$WarehouseStateErrorImplCopyWith(_$WarehouseStateErrorImpl value,
          $Res Function(_$WarehouseStateErrorImpl) then) =
      __$$WarehouseStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WarehouseStateErrorImplCopyWithImpl<$Res>
    extends _$WarehouseStateCopyWithImpl<$Res, _$WarehouseStateErrorImpl>
    implements _$$WarehouseStateErrorImplCopyWith<$Res> {
  __$$WarehouseStateErrorImplCopyWithImpl(_$WarehouseStateErrorImpl _value,
      $Res Function(_$WarehouseStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$WarehouseStateErrorImpl implements WarehouseStateError {
  const _$WarehouseStateErrorImpl({final String? $type})
      : $type = $type ?? 'error';

  factory _$WarehouseStateErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseStateErrorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WarehouseState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseStateErrorImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(WarehouseItem warehouseItemLoaded) loaded,
    required TResult Function(WarehouseItem warehouseItemSaving) saving,
    required TResult Function(WarehouseItem warehouseItemSaved) saved,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(WarehouseItem warehouseItemLoaded)? loaded,
    TResult? Function(WarehouseItem warehouseItemSaving)? saving,
    TResult? Function(WarehouseItem warehouseItemSaved)? saved,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WarehouseItem warehouseItemLoaded)? loaded,
    TResult Function(WarehouseItem warehouseItemSaving)? saving,
    TResult Function(WarehouseItem warehouseItemSaved)? saved,
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
    required TResult Function(WarehouseStateLoading value) loading,
    required TResult Function(WarehouseStateLoaded value) loaded,
    required TResult Function(WarehouseStateSaving value) saving,
    required TResult Function(WarehouseStateSaved value) saved,
    required TResult Function(WarehouseStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WarehouseStateLoading value)? loading,
    TResult? Function(WarehouseStateLoaded value)? loaded,
    TResult? Function(WarehouseStateSaving value)? saving,
    TResult? Function(WarehouseStateSaved value)? saved,
    TResult? Function(WarehouseStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WarehouseStateLoading value)? loading,
    TResult Function(WarehouseStateLoaded value)? loaded,
    TResult Function(WarehouseStateSaving value)? saving,
    TResult Function(WarehouseStateSaved value)? saved,
    TResult Function(WarehouseStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseStateErrorImplToJson(
      this,
    );
  }
}

abstract class WarehouseStateError implements WarehouseState {
  const factory WarehouseStateError() = _$WarehouseStateErrorImpl;

  factory WarehouseStateError.fromJson(Map<String, dynamic> json) =
      _$WarehouseStateErrorImpl.fromJson;
}
