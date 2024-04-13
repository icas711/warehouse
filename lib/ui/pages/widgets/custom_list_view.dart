import 'package:flutter/material.dart';
import 'package:warehouse/ui/pages/widgets/row_data.dart';

class CustomListView extends StatelessWidget {
  final int initialFirstRowIndex;
  final bool sort;
  final int pageSize;
  final RowSource dataSource;
  final Function onRowsPerPageChanged;
  final Function onPageChanged;
  final Function onChanged;

  const CustomListView(
      {super.key,
      required this.initialFirstRowIndex,
      required this.sort,
      required this.pageSize,
      required this.dataSource,
      required this.onRowsPerPageChanged,
      required this.onPageChanged,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Theme(
        data: ThemeData.light()
            .copyWith(cardColor: Theme.of(context).canvasColor),
        child: Container(
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
              source: dataSource!,
              rowsPerPage: pageSize,
              dataRowMinHeight:50,
              dataRowMaxHeight: 100,
              availableRowsPerPage: const [10, 20, 50],
              onRowsPerPageChanged: (value) => onRowsPerPageChanged(value),
              //columnSpacing: 18,
              onPageChanged: (value) async => onPageChanged(value),
              columns: [
                DataColumn(
                  label: const Text(
                    "Имя",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  onSort: (columnIndex, ascending) => onChanged(),
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
                const DataColumn(
                  label: Text(
                    "Редактирование",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
