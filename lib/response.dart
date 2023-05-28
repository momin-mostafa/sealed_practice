import 'package:sealed_api_response/response_enum.dart';

abstract class ApiResponse<T> {}

class SuccessResponse<T> extends ApiResponse<T> {
  final T data;
  final ResponseStatus status = ResponseStatus.SUCCESS;
  SuccessResponse(this.data);
}

class ErrorResponse<T> extends ApiResponse<T> {
  final String errorMessage;
  final ResponseStatus status = ResponseStatus.FAILED;
  ErrorResponse(this.errorMessage);
}

class EmptyResponse<T> extends ApiResponse<T> {
  final T data;
  final ResponseStatus status = ResponseStatus.EMPTY;
  EmptyResponse(this.data);
}

class LoadingResponse<T> extends ApiResponse<T> {
  final ResponseStatus status = ResponseStatus.LOADING;
}
