import 'package:flutter/material.dart';
import 'package:warehouse/models/warehouseitem.dart';

class RowSource extends DataTableSource {
  List<Item> myData;
  final count;

  RowSource({
    required this.myData,
    required this.count,
  });

  @override
  DataRow? getRow(int index) {
    if (index < rowCount) {
      return recentFileDataRow(myData![index]);
    } else
      return null;
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => count;

  @override
  int get selectedRowCount => 0;
}

DataRow recentFileDataRow(Item data) {
  return DataRow(
    cells: [
      DataCell(Text(data.name)),
      DataCell(Text(data.description ?? "")),
      DataCell(Text(data.code.toString() ?? "")),
    ],
  );
}