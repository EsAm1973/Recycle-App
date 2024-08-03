import 'dart:convert';

import 'package:http/http.dart' as http;

//علشان تعمل لوجين لازم تستخدم داتا من الداتا الى موجودة عندهم فى السيرفر
//From this EndPoint use any username & pass to login:https://fakestoreapi.com/users
class AuthService {
  static Future<Map<String, dynamic>> login(
      String username, String password) async {
    final response = await http.post(
      Uri.parse('https://fakestoreapi.com/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
      }),
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Faild to login');
    }
  }
}
