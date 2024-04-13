import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warehouse/models/warehouseitem.dart';
import 'package:warehouse/repositories/warehouse_repo.dart';

part 'warehouse_bloc.freezed.dart';

part 'warehouse_bloc.g.dart';

part 'warehouse_event.dart';

part 'warehouse_state.dart';

class WarehouseBloc extends Bloc<WarehouseEvent, WarehouseState> {
  final WarehouseRepo warehouseRepo;

  WarehouseBloc({required this.warehouseRepo})
      : super(
          const WarehouseState.loading(),
        ) {
    on<WarehouseEventFetch>((event, emit) async {
      emit(const WarehouseState.loading());
      try {
        final _warehouseLoaded = await warehouseRepo
            .getWarehouseItems(event.page, event.pageSize, event.itemName,
                event.sortBy, event.sortOrder, event.token)
            .timeout(const Duration(seconds: 10));
        emit(WarehouseState.loaded(warehouseItemLoaded: _warehouseLoaded));
      } catch (_) {
        emit(const WarehouseState.error());
        rethrow;
      }
    });
  }

  @override
  WarehouseState? fromJson(Map<String, dynamic> json) =>
      WarehouseState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(WarehouseState state) => state.toJson();
}

class EditBloc extends Bloc<EditEvent, EditState> {
  final WarehouseRepo warehouseRepo;

  EditBloc({required this.warehouseRepo})
      : super(
          const EditState.waiting(),
        ) {

    on<EditEventIdle>((event, emit) async {
      emit(const EditState.waiting());
    });

    on<EditEventStart>((event, emit) async {
      emit(EditState.edit(item: event.item));
    });

    on<EditEventFetch>((event, emit) async {
      try {
        final _itemSaved = await warehouseRepo
            .editItem(event.id, event.name, event.measurement_units, event.code,
                event.description, event.token)
            .timeout(const Duration(seconds: 10));
        emit(const EditState.saved());
      } catch (_) {
        emit(const EditState.error());
        rethrow;
      }
    });

    on<AddEventFetch>((event, emit) async {
      try {
        final _itemSaved = await warehouseRepo
            .addItem(name: event.name,measurement_units:  event.measurement_units,code:  event.code,
            description: event.description,token:  event.token)
            .timeout(const Duration(seconds: 10));
        emit(const EditState.saved());
      } catch (_) {
        emit(const EditState.error());
        rethrow;
      }
    });

    on<EditEventAdd>((event, emit) async {
      emit(const EditState.add());
    });

  }

  @override
  WarehouseState? fromJson(Map<String, dynamic> json) =>
      WarehouseState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(WarehouseState state) => state.toJson();
}
