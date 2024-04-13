// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseStateLoadingImpl _$$WarehouseStateLoadingImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseStateLoadingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WarehouseStateLoadingImplToJson(
        _$WarehouseStateLoadingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WarehouseStateLoadedImpl _$$WarehouseStateLoadedImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseStateLoadedImpl(
      warehouseItemLoaded: WarehouseItem.fromJson(
          json['warehouseItemLoaded'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WarehouseStateLoadedImplToJson(
        _$WarehouseStateLoadedImpl instance) =>
    <String, dynamic>{
      'warehouseItemLoaded': instance.warehouseItemLoaded,
      'runtimeType': instance.$type,
    };

_$WarehouseStateErrorImpl _$$WarehouseStateErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseStateErrorImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WarehouseStateErrorImplToJson(
        _$WarehouseStateErrorImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$EditStateWaitingImpl _$$EditStateWaitingImplFromJson(
        Map<String, dynamic> json) =>
    _$EditStateWaitingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EditStateWaitingImplToJson(
        _$EditStateWaitingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$EditStateEditImpl _$$EditStateEditImplFromJson(Map<String, dynamic> json) =>
    _$EditStateEditImpl(
      item: Item.fromJson(json['item'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EditStateEditImplToJson(_$EditStateEditImpl instance) =>
    <String, dynamic>{
      'item': instance.item,
      'runtimeType': instance.$type,
    };

_$EditStateAddImpl _$$EditStateAddImplFromJson(Map<String, dynamic> json) =>
    _$EditStateAddImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EditStateAddImplToJson(_$EditStateAddImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$EditStateSavedImpl _$$EditStateSavedImplFromJson(Map<String, dynamic> json) =>
    _$EditStateSavedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EditStateSavedImplToJson(
        _$EditStateSavedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$EditStateErrorImpl _$$EditStateErrorImplFromJson(Map<String, dynamic> json) =>
    _$EditStateErrorImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EditStateErrorImplToJson(
        _$EditStateErrorImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
