part of 'warehouse_bloc.dart';

@freezed
class WarehouseState with _$WarehouseState {
  const factory WarehouseState.loading() = WarehouseStateLoading;


  const factory WarehouseState.loaded({
    required WarehouseItem warehouseItemLoaded,
  }) = WarehouseStateLoaded;

  const factory WarehouseState.saving({
    required WarehouseItem warehouseItemSaving,
  }) = WarehouseStateSaving;

  const factory WarehouseState.saved({
    required WarehouseItem warehouseItemSaved,
  }) = WarehouseStateSaved;

  const factory WarehouseState.error() = WarehouseStateError;

  factory WarehouseState.fromJson(Map<String, dynamic> json) => _$WarehouseStateFromJson(json);
}
