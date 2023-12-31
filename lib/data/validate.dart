
import 'login data.dart';

class Autogenerated {
  bool? success;
  Message? message;
  Null? data;

  Autogenerated({this.success, this.message, this.data});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message =
    json['message'] != null ? new Message.fromJson(json['message']) : null;
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.message != null) {
      data['message'] = this.message!.toJson();
    }
    data['data'] = this.data;
    return data;
  }
}