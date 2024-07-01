import 'package:flutter_mvvm_demo/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.complete(this.data) : status = Status.COMPLETE;
  ApiResponse.error(this.message) : status = Status.ERROR;

  String toString() {
    return 'Status :$status \n Message : $message \n Data: $data';
  }
}