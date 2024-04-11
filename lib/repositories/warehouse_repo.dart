import 'dart:convert';

import 'package:warehouse/models/warehouseitem.dart';

import 'package:http/http.dart' as http;

class WarehouseRepo {
  final url =
      'https://hcateringback-dev.unitbeandev.com/api/items?warehouseId=6aac3263-ca1f-4b4e-8973-3a948873d9de';

  Future<WarehouseItem> getWarehouseItems(
      int page, int pageSize, String token) async {
    try {
      final response = await http.get(
        Uri.parse('$url&page=$page&pageSize=$pageSize'),
        headers: <String, String>{'Authorization': token},
      );
      var jsonResult = json.decode(utf8.decode(response.bodyBytes));
      return WarehouseItem.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
