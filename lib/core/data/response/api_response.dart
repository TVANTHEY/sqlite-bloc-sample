class ApiResponse<T> {
  T records;
  String? message;
  ApiResponse({
    required this.records,
    this.message,
  });
}
