import 'dart:io';

import "package:http/http.dart" as http;
import 'package:illness_lib/models/user_list_model.dart';
import 'package:illness_lib/services/api_status.dart';
import 'package:illness_lib/utils/constants.dart';

class UserService {
  static Future<Object> getUsers() async {
    try {
      final url = Uri.parse(usersLink);
      var response = await http.get(url);

      if (response.statusCode == 200) {
        return Success(response: userModelFromJson(response.body));
      }
      return Failure(response: "Something wrong happened");
    } on HttpException {
      return Failure(response: "No Internet");
    } on FormatException {
      return Failure(response: "Wrong Format");
    } catch (e) {
      return Failure(response: e.toString());
    }
  }
}
