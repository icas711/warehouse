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

_$WarehouseStateSavingImpl _$$WarehouseStateSavingImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseStateSavingImpl(
      warehouseItemSaving: WarehouseItem.fromJson(
          json['warehouseItemSaving'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WarehouseStateSavingImplToJson(
        _$WarehouseStateSavingImpl instance) =>
    <String, dynamic>{
      'warehouseItemSaving': instance.warehouseItemSaving,
      'runtimeType': instance.$type,
    };

_$WarehouseStateSavedImpl _$$WarehouseStateSavedImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseStateSavedImpl(
      warehouseItemSaved: WarehouseItem.fromJson(
          json['warehouseItemSaved'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WarehouseStateSavedImplToJson(
        _$WarehouseStateSavedImpl instance) =>
    <String, dynamic>{
      'warehouseItemSaved': instance.warehouseItemSaved,
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
