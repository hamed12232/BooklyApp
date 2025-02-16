import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;
  Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with ApiServer");

      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with ApiServer");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with ApiServer");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response);
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Request");
      case DioExceptionType.cancel:
        return ServerFailure("Request to api was cancaled");
      case DioExceptionType.connectionError:
        return ServerFailure("There was an  Connection Error");
      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure("No Internet Connection");
        }
        return ServerFailure("unexpected error , please try again");
    }
  }
  factory ServerFailure.fromResponse(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statuscode == 404) {
      return ServerFailure("Your request not found");
    } else if (statuscode == 500) {
      return ServerFailure("Internal Server error");
    } else {
      return ServerFailure("Oops there was an error");
    }
  }
}
