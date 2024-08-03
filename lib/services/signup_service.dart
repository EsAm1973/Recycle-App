import 'dart:convert';

import 'package:http/http.dart' as http;


//خلى بالك ان الداتا الى هتسجبها هنا هترجعلك ريسبونس ترو بس مش هينفع تسجل بيها
//الموقع الى مستخدمه فى عمل الأي بي اي هو الى شارط بكدة
//علشان تعمل لوجين لازم تستخدم داتا من الداتا الى موجودة عندهم فى السيرفر
//From this EndPoint use any username & pass to login:https://fakestoreapi.com/users
class UserService {
  static Future<Map<String, dynamic>> signUp(Map<String, dynamic> user) async {
    final response = await http.post(
      Uri.parse('https://fakestoreapi.com/users'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(user),
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Faild to sign up');
    }
  }
}
