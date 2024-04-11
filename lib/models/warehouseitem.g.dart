// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouseitem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseItemImpl _$$WarehouseItemImplFromJson(Map<String, dynamic> json) =>
    _$WarehouseItemImpl(
      result: (json['result'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
    );

Map<String, dynamic> _$$WarehouseItemImplToJson(_$WarehouseItemImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'total': instance.total,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      measurement_units: json['measurement_units'] as String?,
      deposit: json['deposit'] as String?,
      code: json['code'] as String?,
      min_quantity: json['min_quantity'] as int?,
      price: json['price'] as int?,
      rent_price: json['rent_price'] as int?,
      accounting_price: json['accounting_price'] as int?,
      type: json['type'] as String?,
      custom_values: json['custom_values'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'measurement_units': instance.measurement_units,
      'deposit': instance.deposit,
      'code': instance.code,
      'min_quantity': instance.min_quantity,
      'price': instance.price,
      'rent_price': instance.rent_price,
      'accounting_price': instance.accounting_price,
      'type': instance.type,
      'custom_values': instance.custom_values,
    };
