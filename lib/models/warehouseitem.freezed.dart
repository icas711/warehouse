// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouseitem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarehouseItem _$WarehouseItemFromJson(Map<String, dynamic> json) {
  return _WarehouseItem.fromJson(json);
}

/// @nodoc
mixin _$WarehouseItem {
  List<Item> get result => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarehouseItemCopyWith<WarehouseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseItemCopyWith<$Res> {
  factory $WarehouseItemCopyWith(
          WarehouseItem value, $Res Function(WarehouseItem) then) =
      _$WarehouseItemCopyWithImpl<$Res, WarehouseItem>;
  @useResult
  $Res call({List<Item> result, int total});
}

/// @nodoc
class _$WarehouseItemCopyWithImpl<$Res, $Val extends WarehouseItem>
    implements $WarehouseItemCopyWith<$Res> {
  _$WarehouseItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseItemImplCopyWith<$Res>
    implements $WarehouseItemCopyWith<$Res> {
  factory _$$WarehouseItemImplCopyWith(
          _$WarehouseItemImpl value, $Res Function(_$WarehouseItemImpl) then) =
      __$$WarehouseItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Item> result, int total});
}

/// @nodoc
class __$$WarehouseItemImplCopyWithImpl<$Res>
    extends _$WarehouseItemCopyWithImpl<$Res, _$WarehouseItemImpl>
    implements _$$WarehouseItemImplCopyWith<$Res> {
  __$$WarehouseItemImplCopyWithImpl(
      _$WarehouseItemImpl _value, $Res Function(_$WarehouseItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? total = null,
  }) {
    return _then(_$WarehouseItemImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseItemImpl implements _WarehouseItem {
  const _$WarehouseItemImpl({required this.result, required this.total});

  factory _$WarehouseItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseItemImplFromJson(json);

  @override
  final List<Item> result;
  @override
  final int total;

  @override
  String toString() {
    return 'WarehouseItem(result: $result, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseItemImpl &&
            const DeepCollectionEquality().equals(other.result, result) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(result), total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseItemImplCopyWith<_$WarehouseItemImpl> get copyWith =>
      __$$WarehouseItemImplCopyWithImpl<_$WarehouseItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseItemImplToJson(
      this,
    );
  }
}

abstract class _WarehouseItem implements WarehouseItem {
  const factory _WarehouseItem(
      {required final List<Item> result,
      required final int total}) = _$WarehouseItemImpl;

  factory _WarehouseItem.fromJson(Map<String, dynamic> json) =
      _$WarehouseItemImpl.fromJson;

  @override
  List<Item> get result;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$WarehouseItemImplCopyWith<_$WarehouseItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get measurement_units => throw _privateConstructorUsedError;
  String? get deposit => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int? get min_quantity => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int? get rent_price => throw _privateConstructorUsedError;
  int? get accounting_price => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  List<dynamic?>? get custom_values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String? measurement_units,
      String? deposit,
      String? code,
      int? min_quantity,
      int price,
      int? rent_price,
      int? accounting_price,
      String? type,
      List<dynamic?>? custom_values});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? measurement_units = freezed,
    Object? deposit = freezed,
    Object? code = freezed,
    Object? min_quantity = freezed,
    Object? price = null,
    Object? rent_price = freezed,
    Object? accounting_price = freezed,
    Object? type = freezed,
    Object? custom_values = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      measurement_units: freezed == measurement_units
          ? _value.measurement_units
          : measurement_units // ignore: cast_nullable_to_non_nullable
              as String?,
      deposit: freezed == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      min_quantity: freezed == min_quantity
          ? _value.min_quantity
          : min_quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rent_price: freezed == rent_price
          ? _value.rent_price
          : rent_price // ignore: cast_nullable_to_non_nullable
              as int?,
      accounting_price: freezed == accounting_price
          ? _value.accounting_price
          : accounting_price // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      custom_values: freezed == custom_values
          ? _value.custom_values
          : custom_values // ignore: cast_nullable_to_non_nullable
              as List<dynamic?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String? measurement_units,
      String? deposit,
      String? code,
      int? min_quantity,
      int price,
      int? rent_price,
      int? accounting_price,
      String? type,
      List<dynamic?>? custom_values});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? measurement_units = freezed,
    Object? deposit = freezed,
    Object? code = freezed,
    Object? min_quantity = freezed,
    Object? price = null,
    Object? rent_price = freezed,
    Object? accounting_price = freezed,
    Object? type = freezed,
    Object? custom_values = freezed,
  }) {
    return _then(_$ItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      measurement_units: freezed == measurement_units
          ? _value.measurement_units
          : measurement_units // ignore: cast_nullable_to_non_nullable
              as String?,
      deposit: freezed == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      min_quantity: freezed == min_quantity
          ? _value.min_quantity
          : min_quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rent_price: freezed == rent_price
          ? _value.rent_price
          : rent_price // ignore: cast_nullable_to_non_nullable
              as int?,
      accounting_price: freezed == accounting_price
          ? _value.accounting_price
          : accounting_price // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      custom_values: freezed == custom_values
          ? _value.custom_values
          : custom_values // ignore: cast_nullable_to_non_nullable
              as List<dynamic?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.measurement_units,
      required this.deposit,
      required this.code,
      required this.min_quantity,
      required this.price,
      required this.rent_price,
      required this.accounting_price,
      required this.type,
      required this.custom_values});

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String? measurement_units;
  @override
  final String? deposit;
  @override
  final String? code;
  @override
  final int? min_quantity;
  @override
  final int price;
  @override
  final int? rent_price;
  @override
  final int? accounting_price;
  @override
  final String? type;
  @override
  final List<dynamic?>? custom_values;

  @override
  String toString() {
    return 'Item(id: $id, name: $name, description: $description, measurement_units: $measurement_units, deposit: $deposit, code: $code, min_quantity: $min_quantity, price: $price, rent_price: $rent_price, accounting_price: $accounting_price, type: $type, custom_values: $custom_values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.measurement_units, measurement_units) ||
                other.measurement_units == measurement_units) &&
            (identical(other.deposit, deposit) || other.deposit == deposit) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.min_quantity, min_quantity) ||
                other.min_quantity == min_quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rent_price, rent_price) ||
                other.rent_price == rent_price) &&
            (identical(other.accounting_price, accounting_price) ||
                other.accounting_price == accounting_price) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.custom_values, custom_values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      measurement_units,
      deposit,
      code,
      min_quantity,
      price,
      rent_price,
      accounting_price,
      type,
      const DeepCollectionEquality().hash(custom_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {required final String id,
      required final String name,
      required final String description,
      required final String? measurement_units,
      required final String? deposit,
      required final String? code,
      required final int? min_quantity,
      required final int price,
      required final int? rent_price,
      required final int? accounting_price,
      required final String? type,
      required final List<dynamic?>? custom_values}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String? get measurement_units;
  @override
  String? get deposit;
  @override
  String? get code;
  @override
  int? get min_quantity;
  @override
  int get price;
  @override
  int? get rent_price;
  @override
  int? get accounting_price;
  @override
  String? get type;
  @override
  List<dynamic?>? get custom_values;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
