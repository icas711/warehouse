import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:warehouse/bloc/warehouse_bloc.dart';
import 'package:warehouse/models/warehouseitem.dart';
import 'package:warehouse/ui/pages/widgets/custom_list_tile.dart';

class WarehouseList extends StatefulWidget {
  final String token;

  const WarehouseList({
    Key? key,
    required this.token,
  }) : super(key: key);

  @override
  State<WarehouseList> createState() => _WarehouseListState();
}

class _WarehouseListState extends State<WarehouseList> {
  late WarehouseItem _currentItem;
  List<Item> _currentResults = [];
  int _currentPage = 1;
  int pageSize = 10;
bool first=true;

  final RefreshController refreshController = RefreshController();
  bool _isPagination = false;

  @override
  void initState() {
    if (_currentResults.isEmpty) {
      context.read<WarehouseBloc>().add(WarehouseEvent.fetch(
          page: _currentPage, pageSize: pageSize, token: widget.token));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<WarehouseBloc>().state;
    return state.when(
      loading: () {


        if (!_isPagination) {
          return const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(strokeWidth: 2),
                SizedBox(width: 10),
                Text('Загрузка...'),
              ],
            ),
          );
        } else {
          return _customListView(_currentResults);
        }
      },
      loaded: (warehouseLoaded) {
        _currentItem = warehouseLoaded;
        if (_isPagination) {
          _currentResults.addAll(_currentItem.result);
          refreshController.loadComplete();
          _isPagination = false;
        } else {
          _currentResults = _currentItem.result;
        }
        return _currentResults.isNotEmpty
            ? _customListView(_currentResults)
            : const SizedBox();
      },
      error: () => const Text('Ничего нет...'),
      saving: (WarehouseItem warehouseItemSaving) {
        return const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(strokeWidth: 2),
              SizedBox(width: 10),
              Text('Загрузка...'),
            ],
          ),
        );
      },
      saved: (WarehouseItem warehouseItemSaved) {
        return const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(strokeWidth: 2),
              SizedBox(width: 10),
              Text('Загрузка...'),
            ],
          ),
        );
      },
    );
  }

  Widget _customListView(List<Item> currentResults) {
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: true,
      enablePullDown: false,
      onLoading: () {
        _currentPage++;
        _isPagination = true;
        if (_currentPage <= _currentItem.total) {
          context.read<WarehouseBloc>().add(WarehouseEvent.fetch(
              page: _currentPage, pageSize: pageSize, token: widget.token));
        } else {
          refreshController.loadNoData();
        }

      },
      child: ListView.separated(
        itemCount: currentResults.length,
        separatorBuilder: (_, index) => const SizedBox(height: 5),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final result = currentResults[index];
          return Padding(
            padding:
                const EdgeInsets.only(right: 16, left: 16, top: 3, bottom: 3),
            child: CustomListTile(result: result),
          );
        },
      ),
    );
  }
}
