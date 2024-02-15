import 'package:countstock/core/data/model/product_model.dart';
class ProductState {
  final bool isLoading;
  final List<ProductModel>? record;
  ProductState({
    this.isLoading = false,
    this.record,
  });

  ProductState copyWith({
    bool? isLoading,
    List<ProductModel>? record,
  }) {
    return ProductState(
      isLoading: isLoading ?? this.isLoading,
      record: record ?? this.record,
    );
  }
}
