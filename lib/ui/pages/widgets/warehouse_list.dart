import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse/bloc/warehouse_bloc.dart';
import 'package:warehouse/models/warehouseitem.dart';
import 'package:warehouse/ui/pages/widgets/add_item_widget.dart';
import 'package:warehouse/ui/pages/widgets/custom_list_view.dart';
import 'package:warehouse/ui/pages/widgets/edit_widget.dart';
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
  bool _isPagination = false;
  int initialFirstRowIndex = 0;
  String sortOrder = 'ASC';
  String itemName = '';
  bool showEditDialog = false;
  Item? currentEditItem;
  RowSource? dataSource;

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
    final stateEdit = context.watch<EditBloc>().state;
    return state.when(
      loading: () {
        context.read<EditBloc>().add(EditEvent.idle());
        return _circularIndicator();
      },
      loaded: (warehouseLoaded) {
        _currentItem = warehouseLoaded;
        setState(() {
          _currentResults.addAll(_currentItem.result);
        });
        if (_isPagination) {
          setState(() {
            _isPagination = false;
          });
          dataSource = RowSource(
            myData: _currentItem.result,
            count: _currentItem.total,
            onEdit: _onEdit,
          );
        } else {
          if (dataSource == null) {
            dataSource = RowSource(
              myData: _currentItem.result,
              count: _currentItem.total,
              onEdit: _onEdit,
            );
          } else {
            dataSource!.addRow(_currentResults);
          }
        }

        return SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    HeaderWidget(
                      currentItem: _currentItem.total,
                      token: widget.token,
                      reload: _search,
                    ),
                    _currentResults.isNotEmpty
                        ? CustomListView(
                            initialFirstRowIndex: initialFirstRowIndex,
                            sort: sort,
                            pageSize: pageSize,
                            dataSource: dataSource!,
                            onRowsPerPageChanged: _onRowsPerPageChanged,
                            onPageChanged: _onPageChanged,
                            onChanged: _onChanged,
                            key: ValueKey(dataSource),
                          )
                        //_customListView(_currentResults)
                        : _circularIndicator(),
                  ]),
              stateEdit.when(
                waiting: () => Container(),
                edit: (item) => Stack(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        color: const Color(0x282D0102)),
                    EditWidget(
                      currentItem: item,
                      onCancel: _onCancel,
                      token: widget.token,
                    ),
                  ],
                ),
                saved: () {
                  _reload();
                  return Container();
                },
                error: () => Container(),
                add: () => Stack(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        color: const Color(0x282D0102)),
                    AddItemWidget(
                      onCancel: _onCancel,
                      token: widget.token,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      error: () => const Text('Ничего нет...'),
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

  void _onRowsPerPageChanged(value) {
    if (pageSize != value && value != null) {
      setState(() {
        pageSize = value;
      });
      _reload();
    }
  }

  void _onPageChanged(value) async {
    initialFirstRowIndex = value;
    final sum = 1 + value ~/ pageSize;
    currentPage = sum.toInt();
    if (value >= _currentResults.length) {
      context.read<WarehouseBloc>().add(WarehouseEvent.fetch(
          page: currentPage,
          pageSize: pageSize,
          itemName: itemName,
          sortBy: 'name',
          sortOrder: sortOrder,
          token: widget.token));
    }

    setState(() {});
  }

  void _onEdit(Item item) async {
    context.read<EditBloc>().add(EditEvent.start(item: item));
  }

  void _onCancel() {
    context.read<EditBloc>().add(EditEvent.idle());
  }

  void _reload([String? searchName]) {
    _currentResults = [];
    currentPage = 1;
    initialFirstRowIndex = 0;
    context.read<WarehouseBloc>().add(WarehouseEvent.fetch(
        page: 1,
        pageSize: pageSize,
        itemName: searchName ?? '',
        sortBy: 'name',
        sortOrder: sortOrder,
        token: widget.token));
  }

  void _search([String? searchName]) {
    _isPagination = true;
    _currentResults = [];
    currentPage = 1;
    initialFirstRowIndex = 0;
    context.read<WarehouseBloc>().add(WarehouseEvent.fetch(
        page: 1,
        pageSize: pageSize,
        itemName: searchName ?? '',
        sortBy: 'name',
        sortOrder: sortOrder,
        token: widget.token));
  }

  void _onChanged() {
    setState(() {
      sort = !sort;
    });
    _currentResults = [];
    currentPage = 1;
    initialFirstRowIndex = 0;
    if (!sort) {
      sortOrder = 'ASC';
    } else {
      sortOrder = 'DESC';
    }
    context.read<WarehouseBloc>().add(WarehouseEvent.fetch(
        page: currentPage,
        pageSize: pageSize,
        itemName: '',
        sortBy: 'name',
        sortOrder: sortOrder,
        token: widget.token));
  }
}
