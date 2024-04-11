import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouseitem.freezed.dart';
part 'warehouseitem.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class WarehouseItem with _$WarehouseItem {
  const factory WarehouseItem({
    required List<Item> result,
    required int total,

})=_WarehouseItem;
factory WarehouseItem.fromJson(Map<String, dynamic> json)=>_$WarehouseItemFromJson(json);
}


@Freezed(makeCollectionsUnmodifiable: false)
class Item with _$Item {
  const factory Item({
    required String id,
    required String name,
    required String? description,
    required String? measurement_units,
    required String? deposit,
    required String? code,
    required int? min_quantity,
    required int? price,
    required int? rent_price,
    required int? accounting_price,
    required String? type,
    required List<dynamic?>? custom_values,
  })=_Item;
  factory Item.fromJson(Map<String, dynamic> json)=>_$ItemFromJson(json);
}
