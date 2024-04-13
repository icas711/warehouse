import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse/bloc/warehouse_bloc.dart';
import 'package:warehouse/models/warehouseitem.dart';
import 'package:warehouse/service/constants.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget(
      {super.key, required this.currentItem, required this.token, required this.reload});

  final int currentItem;
  final String token;
final Function reload;

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  List<Item> _currentResults = [];
  int currentPage = 1;
  int pageSize = 10;
  bool sort = false;
  List<Item>? filterData;
  int initialFirstRowIndex = 0;
  String sortOrder = 'ASC';
  String itemName = '';

  @override
  Widget build(BuildContext context) {
    //final WarehouseItem _currentItem = widget.currentItem;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Номенклатура',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: 30,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: kBadgeColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Center(
                      child: Text(
                    '${widget.currentItem.toString()} единиц',
                    style: const TextStyle(color: Colors.white),
                  )),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          width: 500,
          height: 35,
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white10, width: 1.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black38,
                      size: 12,
                    ),
                    hintText: 'Поиск по названию',
                    hintStyle: TextStyle(color: Colors.black38),
                  ),
                  onChanged: (value) {
                    setState(() {
                      itemName = value;
                    });
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  widget.reload(itemName);},
                child: const SizedBox(
                  height: 35,
                  width: 90,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: kButtonColor,
                    ),
                    child: Center(
                      child: Text(
                        "Поиск",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: InkWell(
                  onTap: () {
                    context.read<EditBloc>().add(EditEvent.add());
                  },
                  child: const SizedBox(
                    height: 35,
                   // width: 90,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: kBadgeColor,
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Icon(
                                size: 14,
                                CupertinoIcons.plus,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.white,
                                    offset: Offset(5, 5),
                                    blurRadius: 12,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: Text(
                                "Новая позиция",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
