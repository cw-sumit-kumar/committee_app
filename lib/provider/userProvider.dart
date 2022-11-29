import 'dart:developer';
import 'package:committee_project/api/Routes.dart';
import 'package:committee_project/api/api.dart';
import 'package:committee_project/models/ResObj.dart';
import 'package:flutter/foundation.dart';

class UserProvider extends ChangeNotifier {
  ApiUtils api = ApiUtils.internal();

  Future<bool> login(String phoneNo, String password) async {
    Map data = {"phoneNo": phoneNo, "password": password};
    RespObj res = await api.postData(ApiRoutes.LOGIN, mBody: data, header: "");
    return true;
  }
}
