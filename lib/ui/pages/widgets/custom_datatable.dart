import 'package:flutter/material.dart';
import 'package:warehouse/models/warehouseitem.dart';
import 'package:warehouse/ui/pages/widgets/scrollable_widget.dart';

class SortablePage extends StatefulWidget {
  final List<Item> items;
  const SortablePage({super.key, required this.items});

  @override
  SortablePageState createState() => SortablePageState();
}

class SortablePageState extends State<SortablePage> {
  late List<Item> items=widget.items;
  int? sortColumnIndex;
  bool isAscending = false;

  @override
  void initState() {
    super.initState();

    this.items = List.of(items);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: ScrollableWidget(child: buildDataTable()),
  );

  Widget buildDataTable() {
    final columns = ['Имя', 'Описание', 'Номер'];

    return DataTable(
      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      rows: getRows(items),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
    label: Text(column),
    onSort: onSort,
  ))
      .toList();

  List<DataRow> getRows(List<Item> items) => items.map((Item item) {
    final cells = [item.name, item.description, item.id];

    return DataRow(cells: getCells(cells));
  }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      items.sort((item1, item2) =>
          compareString(ascending, item1.name, item2.name));
    }

    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);
}