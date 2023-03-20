import 'package:dio/dio.dart';

class ServerFailure {
  final String errorMsg;

  ServerFailure(this.errorMsg);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure("Connection timeout with API server!");

      case DioErrorType.sendTimeout:
        return ServerFailure("Send timeout with API server!");

      case DioErrorType.receiveTimeout:
        return ServerFailure("Receive timeout with API server!");

      case DioErrorType.cancel:
        return ServerFailure("Request to API server canceled");

      case DioErrorType.unknown:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure("No internet connection");
        }
        return ServerFailure("Unexpected error, Please try again!");
      default:
        return ServerFailure("Ops an error occured, Please try again");
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Request not found, Please try again!");
    } else if (statusCode == 500) {
      return ServerFailure("Internal server error, Please try later!");
    } else {
      return ServerFailure("Ops an error occured, Please try again");
    }
  }
}
