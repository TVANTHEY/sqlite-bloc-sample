class RepoResponse<T> {
  T records;
  String? message;
  RepoResponse({
    required this.records,
    this.message,
  });
}
