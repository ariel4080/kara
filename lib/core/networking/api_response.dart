import 'model/error_dto.dart';

sealed class ApiResponse<T> {
  R when<R>({
    R Function(SuccessApiResponse<T> success)? onSuccess,
    R Function(EmptyApiResponse<T> empty)? onEmpty,
    R Function(ErrorApiResponse<T> error)? onError,
  });
}

class EmptyApiResponse<T> extends ApiResponse<T> {
  @override
  R when<R>({
    R Function(SuccessApiResponse<T> success)? onSuccess,
    R Function(EmptyApiResponse<T> empty)? onEmpty,
    R Function(ErrorApiResponse<T> error)? onError,
  }) {
    return onEmpty != null
        ? onEmpty(this)
        : throw UnimplementedError('onEmpty is not implemented');
  }
}

class SuccessApiResponse<T> extends ApiResponse<T> {
  final T body;

  SuccessApiResponse(this.body);

  @override
  R when<R>({
    R Function(SuccessApiResponse<T> success)? onSuccess,
    R Function(EmptyApiResponse<T> empty)? onEmpty,
    R Function(ErrorApiResponse<T> error)? onError,
  }) {
    return onSuccess != null
        ? onSuccess(this)
        : throw UnimplementedError('onSuccess is not implemented');
  }
}

class ErrorApiResponse<T> extends ApiResponse<T> implements Exception {
  final String httpErrorMessage;
  final int httpStatusCode;
  final List<ErrorDto>? errors;

  ErrorApiResponse({
    required this.httpErrorMessage,
    required this.httpStatusCode,
    this.errors,
  });

  @override
  R when<R>({
    R Function(SuccessApiResponse<T> success)? onSuccess,
    R Function(EmptyApiResponse<T> empty)? onEmpty,
    R Function(ErrorApiResponse<T> error)? onError,
  }) {
    return onError != null
        ? onError(this)
        : throw UnimplementedError('onError is not implemented');
  }
}
