part of 'warehouse_bloc.dart';

@freezed
class WarehouseState with _$WarehouseState {
  const factory WarehouseState.loading() = WarehouseStateLoading;


  const factory WarehouseState.loaded({
    required WarehouseItem warehouseItemLoaded,
  }) = WarehouseStateLoaded;

  const factory WarehouseState.error() = WarehouseStateError;

  factory WarehouseState.fromJson(Map<String, dynamic> json) => _$WarehouseStateFromJson(json);
}

@freezed
class EditState with _$EditState {
  const factory EditState.waiting() = EditStateWaiting;
  const factory EditState.edit({required Item item}) = EditStateEdit;
  const factory EditState.add() = EditStateAdd;
  const factory EditState.saved() = EditStateSaved;

  const factory EditState.error() = EditStateError;

  factory EditState.fromJson(Map<String, dynamic> json) => _$EditStateFromJson(json);
}