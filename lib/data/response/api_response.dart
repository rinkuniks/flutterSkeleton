import 'package:mvvm/data/response/status.dart';

/// Created by Sawan Kumar on 12/05/23.

class ApiResponse<T> {
  Status? status;

  T? data;

  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = Status.LOADING;

  ApiResponse.completed(this.data) : status = Status.COMPLETED;

  ApiResponse.error(this.message) : status = Status.ERROR;

  @override
  String toString() {
    return "Status : $status \n Message: $message \n Data $data";
  }
}
