import 'dart:convert';

import 'package:warehouse/models/warehouseitem.dart';

import 'package:http/http.dart' as http;

class WarehouseRepo {
  final url =
      'https://hcateringback-dev.unitbeandev.com/api/items?warehouseId=6aac3263-ca1f-4b4e-8973-3a948873d9de';
  final urlSend = 'https://hcateringback-dev.unitbeandev.com/api/items';

  Future<WarehouseItem> getWarehouseItems(int page, int pageSize,
      String itemName, String sortBy, String sortOrder, String token) async {
    try {
      final response = await http.get(
        Uri.parse(
            '$url&page=$page&pageSize=$pageSize&itemName=$itemName&sortBy=$sortBy&sortOrder=$sortOrder'),
        headers: <String, String>{'Authorization': token},
      );
      var jsonResult = json.decode(utf8.decode(response.bodyBytes));
      return WarehouseItem.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Item> editItem(String id, String name, String measurement_units,
      String code, String description, String token) async {
    try {
      final response = await http.patch(
        Uri.parse('$urlSend/$id'),
        headers: <String, String>{
          'Authorization': token,
          'Content-Type': 'application/json'
        },
        body: json.encode({
          'name': name,
          'measurement_units': measurement_units,
          'code': code,
          'description': description,
        }),
      );
      var jsonResult = json.decode(utf8.decode(response.bodyBytes));
      return Item.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Item> addItem(
      {required String name,
      required measurement_units,
      required code,
      required description,
      required token}) async {
    try {
      final response = await http.post(
        Uri.parse('$urlSend'),
        headers: <String, String>{
          'Authorization': token,
          'Content-Type': 'application/json'
        },
        body: json.encode({
          'name': name,
          'measurement_units': measurement_units,
          'code': code,
          'description': description,
        }),
      );
      var jsonResult = json.decode(utf8.decode(response.bodyBytes));
      print('jsonResult: $jsonResult');
      return Item.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
