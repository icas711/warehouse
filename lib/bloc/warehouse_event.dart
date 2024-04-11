part of 'warehouse_bloc.dart';

@freezed
class WarehouseEvent with _$WarehouseEvent{
  factory WarehouseEvent.fetch({
    required int page,
    required int pageSize,
    required String token,
})= WarehouseEventFetch;
}