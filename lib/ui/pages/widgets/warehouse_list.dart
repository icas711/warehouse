import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse/bloc/warehouse_bloc.dart';
import 'package:warehouse/models/warehouseitem.dart';
import 'package:warehouse/ui/pages/widgets/custom_datatable.dart';
import 'package:warehouse/ui/pages/widgets/scrollable_widget.dart';

class WarehouseList extends StatefulWidget {
  final String token;

  const WarehouseList({
    super.key,
    required this.token,
  });

  @override
  State<WarehouseList> createState() => _WarehouseListState();
}

class _WarehouseListState extends State<WarehouseList> {
  late WarehouseItem _currentItem;
  List<Item> _currentResults = [];
  int _currentPage = 1;
  int pageSize = 10;

  bool _isPagination = false;
  @override
  void initState() {
    if (_currentResults.isEmpty) {
      context.read<WarehouseBloc>().add(WarehouseEvent.fetch(
          page: _currentPage, pageSize: pageSize, sortBy: 'name', sortOrder: 'ASC', token: widget.token));
    }
    super.initState();
  }

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {

    final state = context.watch<WarehouseBloc>().state;
    return state.when(
      loading: () {
        if (!_isPagination) {
          isLoading = true;
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
        isLoading = false;
        _currentItem = warehouseLoaded;
        if (_isPagination) {
          _currentResults.addAll(_currentItem.result);
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
    return SortablePage(items: currentResults);
    /*ListView.builder(
      controller: scrollController,
      itemCount: currentResults.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        if (index < currentResults.length) {
          final result = currentResults[index];
          return ScrollableWidget(child: buildDataTable());
          //CustomListTile(result: result);
        } else {
          Timer(const Duration(milliseconds: 300), () {
            scrollController.jumpTo(scrollController.position.maxScrollExtent);
          });
          setState(() {});
          return _loadingIndicator();
        }
      },
    );*/
  }

  Widget _loadingIndicator() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }


}


