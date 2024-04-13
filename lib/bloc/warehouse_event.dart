part of 'warehouse_bloc.dart';

@freezed
class WarehouseEvent with _$WarehouseEvent{
  factory WarehouseEvent.fetch({
    required int page,
    required int pageSize,
    required String itemName,
    required String sortBy,
    required String sortOrder,
    required String token,
})= WarehouseEventFetch;

}

@freezed
class EditEvent with _$EditEvent{
  factory EditEvent.idle()= EditEventIdle;
  factory EditEvent.start({
    required Item item,
})= EditEventStart;
  factory EditEvent.add()= EditEventAdd;
  factory EditEvent.addFetch({
    required String name,
    required String measurement_units,
    required String code,
    required String description,
    required String token,
  })= AddEventFetch;
  factory EditEvent.fetch({
    required String id,
    required String name,
    required String measurement_units,
    required String code,
    required String description,
    required String token,
  })= EditEventFetch;
}
