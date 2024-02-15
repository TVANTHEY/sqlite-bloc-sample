import 'package:countstock/core/data/model/product_model.dart';
import 'package:countstock/core/data/response/api.dart';
import 'package:countstock/core/data/response/repo_response.dart';
import 'package:countstock/core/error/exeptions.dart';
import 'package:countstock/core/error/failure.dart';
import 'package:dartz/dartz.dart';

class ProductRepo {
  final Api api;
  ProductRepo(this.api);
  Future<Either<Failure, RepoResponse<List<ProductModel>>>>
      getProductList() async {
    try {
      final result = await api.getPersonList();

      final List<ProductModel> record = [];

      for (var e in result.records) {
        record.add(ProductModel.fromMap(e));
      }

      return Right(RepoResponse(
        records: record,
      ));
    } on DataExecption {
      return Left(DataFailure("Error"));
    }
  }
}
