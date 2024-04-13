import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse/bloc/warehouse_bloc.dart';
import 'package:warehouse/models/warehouseitem.dart';

class RowSource extends DataTableSource {
  List<Item> myData;
  final int count;
  final Function onEdit;

  RowSource({
    required this.myData,
    required this.count,
    required this.onEdit,
  });

  @override
  DataRow? getRow(int index) {
    if (index < count) {
      return recentFileDataRow(myData![index], onEdit);
    } else
      return null;
  }

  void addRow(List<Item> items) {
    myData.clear();
    myData.addAll(items);
    notifyListeners();
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => count;

  @override
  int get selectedRowCount => 0;

  DataRow recentFileDataRow(Item data, Function onEdit) {
    return DataRow(
      key: ValueKey(data.id),
      cells: [
        DataCell(Text(data.name)),
        DataCell(Text(data.description ?? "")),
        DataCell(Text(data.code.toString() ?? "")),
        DataCell(
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              onEdit(data);
            },
          ),
        ),
      ],
    );
  }
}
