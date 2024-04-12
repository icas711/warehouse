import 'dart:convert';
import 'package:http/http.dart';
import 'package:warehouse/models/token.dart';

class TokenRepo {
  final url =
      'https://hcateringback-dev.unitbeandev.com/api/items?warehouseId=6aac3263-ca1f-4b4e-8973-3a948873d9de';

  Future<Token> getToken(String login, String password) async {
    try {
      final response = await post(
        Uri.parse('https://hcateringback-dev.unitbeandev.com/api/auth/login'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: json.encode({'login': login, 'password': password}),
      );
      Map<String, dynamic> map = json.decode(response.body);
      //String basicAuth = map['access_token'];
      return Token.fromJson(map);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
