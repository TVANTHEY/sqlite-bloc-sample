import 'package:countstock/core/data/response/api_response.dart';

abstract class Api {
  Future<ApiResponse> getPersonList();
}
