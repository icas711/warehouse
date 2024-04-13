import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse/bloc/warehouse_bloc.dart';
import 'package:warehouse/models/warehouseitem.dart';
import 'package:warehouse/repositories/warehouse_repo.dart';
import 'package:warehouse/service/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddItemWidget extends StatefulWidget {
  final Function onCancel;
  final String token;

  const AddItemWidget(
      {super.key,
        required this.onCancel,
        required this.token});

  @override
  State<AddItemWidget> createState() => _AddItemWidgetState();
}

class _AddItemWidgetState extends State<AddItemWidget> {
  late final currentItem;
  TextEditingController name = TextEditingController();
  TextEditingController measurement_units = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController code = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    name.dispose();
    measurement_units.dispose();
    description.dispose();
    code.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        width: MediaQuery.of(context).size.width * 0.3,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Text('Новая позиция',
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 20),
              Text('Заполните все поля для редатирования номенклатуры',
                  style: Theme.of(context).textTheme.titleSmall),
              //,style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 20),
              Text('Название', style: Theme.of(context).textTheme.bodySmall),
              _textField(name),
              const SizedBox(
                height: 24,
              ),
              Text('Единицы измерения',
                  style: Theme.of(context).textTheme.bodySmall),
              _textField(measurement_units),
              const SizedBox(
                height: 24,
              ),
              Text('Артикул/код', style: Theme.of(context).textTheme.bodySmall),
              _textField(code),
              const SizedBox(
                height: 24,
              ),
              Text('Описание', style: Theme.of(context).textTheme.bodySmall),
              _textField(description, 3),
              const Spacer(),
              LayoutBuilder(builder: (context, constraints) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth / 2.4,
                      child: ElevatedButton(
                        onPressed: () {
                          widget.onCancel();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kButtonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(3), // <-- Radius
                          ),
                        ),
                        child: const Text(
                          'Отмена',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: constraints.maxWidth / 2.4,
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<EditBloc>().add(EditEvent.addFetch(
                              name: name.text.trim(),
                              measurement_units: measurement_units.text.trim(),
                              code: code.text.trim(),
                              description: description.text.trim(),
                              token: widget.token));

                          widget.onCancel();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kBadgeColor,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(3), // <-- Radius
                          ),
                        ),
                        child: const Text(
                          'Подтвердить',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                );
              }),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textField(TextEditingController _text, [int? maxLines]) {
    return TextFormField(
      controller: _text,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) =>
      value!.trim().isEmpty ? 'Поле не должно быть пустывм' : null,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 0.5),
        ),
        filled: true,
      ),
    );
  }
}
