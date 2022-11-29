class RespObj {
  String? status;
  String? message;
  dynamic? data;

  RespObj({this.status, this.message, this.data});

  RespObj.fromJson(Map<String, dynamic> json) {
    status = json['status'].toString() ?? "false";
    message = json['message'] ?? "No Data";
    data = json['data'] ?? {};
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['data'] = this.data;
    return data;
  }

  bool getStatus() => status != null
      ? status == "true"
          ? true
          : false
      : false;
}