import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse/bloc/warehouse_bloc.dart';
import 'package:warehouse/models/warehouseitem.dart';
import 'package:warehouse/ui/pages/widgets/header.dart';
import 'package:warehouse/ui/pages/widgets/row_data.dart';

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
  int currentPage = 1;
  int pageSize = 10;
  bool sort = false;
  List<Item>? filterData;
  bool _isPagination = true;
  int initialFirstRowIndex = 0;
  String sortOrder = 'ASC';
  String itemName = '';

  onsortColum(int columnIndex) {
    context.read<WarehouseBloc>().add(WarehouseEvent.fetch(
        page: currentPage,
        pageSize: pageSize,
        itemName: itemName,
        sortBy: 'name',
        sortOrder: sortOrder,
        token: widget.token));
  }

  @override
  void initState() {
    if (_currentResults.isEmpty) {
      context.read<WarehouseBloc>().add(WarehouseEvent.fetch(
          page: currentPage,
          pageSize: pageSize,
          itemName: itemName,
          sortBy: 'name',
          sortOrder: sortOrder,
          token: widget.token));
    }
    super.initState();
  }

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<WarehouseBloc>().state;

    return state.when(
      loading: () {
        return _circularIndicator();
      },
      loaded: (warehouseLoaded) {
        _currentItem = warehouseLoaded;
        if (_isPagination) {
          _currentResults.addAll(_currentItem.result);
          _isPagination = false;
        } else {
          _currentResults = _currentItem.result;
        }
        return SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HeaderWidget(
                  currentItem: _currentItem.total,
                  token: widget.token,
                  onChanged: _onChanged,
                ),
                _currentResults.isNotEmpty
                    ? _customListView(_currentResults)
                    : _circularIndicator(),
              ]),
        );
      },
      error: () => const Text('Ничего нет...'),
      saving: (WarehouseItem warehouseItemSaving) {
        return _circularIndicator();
      },
      saved: (WarehouseItem warehouseItemSaved) {
        return _circularIndicator();
      },
    );
  }

  Widget _circularIndicator() {
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
  }

  Widget _customListView(List<Item> currentResults) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Theme(
        data: ThemeData.light()
            .copyWith(cardColor: Theme.of(context).canvasColor),
        child: PaginatedDataTable(
          initialFirstRowIndex: initialFirstRowIndex,
          sortColumnIndex: 0,
          sortAscending: sort,
          showEmptyRows: false,
          showFirstLastButtons: true,
          source: RowSource(
            myData: _currentResults,
            count: _currentItem.total,
          ),
          rowsPerPage: pageSize,
          availableRowsPerPage: const [10, 20, 50],
          onRowsPerPageChanged: (value){
            if(pageSize!=value&&value!=null) {
              setState(() {
                pageSize = value;
              });
              _onChanged();
            }
          },
          columnSpacing: 18,
          onPageChanged: (value) async {
            initialFirstRowIndex = value;
            _isPagination = true;
            currentPage = 1 + value ~/ pageSize;
            if (value >= _currentResults.length) {
              context.read<WarehouseBloc>().add(WarehouseEvent.fetch(
                  page: currentPage,
                  pageSize: pageSize,
                  itemName: itemName,
                  sortBy: 'name',
                  sortOrder: sortOrder,
                  token: widget.token));
            }
          },
          columns: [
            DataColumn(
              label: const Text(
                "Имя",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              onSort: (columnIndex, ascending) => _onChanged(),
            ),
            const DataColumn(
              label: Text(
                "Описание",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
            ),
            const DataColumn(
              label: Text(
                "Код",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onChanged([String? searchName]) {
    setState(() {
      sort = !sort;
    });
    _currentResults = [];
    currentPage = 1;
    initialFirstRowIndex = 0;
    if (sort) {
      sortOrder = 'ASC';
    } else {
      sortOrder = 'DESC';
    }
    context.read<WarehouseBloc>().add(WarehouseEvent.fetch(
        page: currentPage,
        pageSize: pageSize,
        itemName: searchName ?? '',
        sortBy: 'name',
        sortOrder: sortOrder,
        token: widget.token));
  }
}

class CustomPaginatedDataTable extends PaginatedDataTable{

}
