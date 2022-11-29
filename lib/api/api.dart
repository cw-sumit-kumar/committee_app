import 'dart:convert';
import 'dart:developer';
import 'dart:html';
import 'dart:io';
import 'package:dio/dio.dart';
import '../models/ResObj.dart';

class ApiUtils {
  static ApiUtils _instance = new ApiUtils.internal();
  ApiUtils.internal();

  factory ApiUtils() => _instance;
  static const baseUrl = "https://committee-api.herokuapp.com/api";

  Future<RespObj> postData(String url, {var mBody, String header = ""}) async {
    print("In post API function");
    try {
      Dio dio = Dio();
      print(mBody);
      // FormData formData = new FormData.fromMap(mBody!.cast<String, dynamic>());
      var response = await dio.post(baseUrl + url,
          data: jsonEncode(mBody),
          options: Options(headers: {
            "content-type":
                "application/json", // This preventes empty response body
          }));
      print(response.data);
      print(response.statusCode);

      if (response.statusCode == 200) {
        return RespObj.fromJson(jsonDecode(response.data));
      }
      return RespObj.fromJson(response.data);
    } catch (e) {
      log(e.toString());
      return RespObj(status: "false", message: 'Server Unavailable');
    }
  }
}
