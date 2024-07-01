class AppExceptions implements Exception{

  final _message;
  final _prefix;

  AppExceptions([this._message,this._prefix]);

  String toString(){
    return '$_message$_prefix';
  }
}

class InternetException extends AppExceptions{
  InternetException([String? message]):super(message, 'NO internet');
}

class RequestTimeOut extends AppExceptions{
  RequestTimeOut([String? message]):super(message, 'Request time out');
}

class ServerException extends AppExceptions{
  ServerException([String? message]):super(message, 'Internal Server Error');
}
class InvalidUrlException extends AppExceptions{
  InvalidUrlException([String? message]):super(message, 'Invalid URL');
}
class FetchDataException extends AppExceptions{
  FetchDataException([String? message]):super(message, 'Error while communication');
}