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
        final _warehouseLoaded = await warehouseRepo.getWarehouseItems(
            event.page, event.pageSize, event.token).timeout(const Duration(seconds: 10));
        emit(WarehouseState.loaded(warehouseItemLoaded: _warehouseLoaded));
      } catch (_) {
        emit(const WarehouseState.error());
        rethrow;
      }
    });
  }

  @override
  WarehouseState? fromJson(Map<String, dynamic> json) => WarehouseState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(WarehouseState state) => state.toJson();
}
