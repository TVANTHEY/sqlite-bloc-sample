import 'package:countstock/core/data/database/app_database.dart';
import 'package:countstock/core/data/model/product_model.dart';
import 'package:countstock/core/data/response/api.dart';
import 'package:countstock/core/data/response/api_response.dart';
import 'package:countstock/core/error/exeptions.dart';

class ApiCrud implements Api {
  ApiCrud();

  @override
  Future<ApiResponse> getPersonList() async {
    try {
      final db = await AppDatabase.instance.db;
      final record = await db.query(ProductModel.tableName);
      return ApiResponse(records: record);
    } on DataExecption {
      throw GeneralException();
    }
  }
}
