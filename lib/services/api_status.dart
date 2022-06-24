class Success {
  int code;
  Object? response;
  Success({this.code = 200, this.response});
}

class Failure {
  Object? response;
  Failure({this.response});
}
