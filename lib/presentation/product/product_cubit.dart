import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:countstock/core/data/repository/product_repo.dart';
import 'package:countstock/core/injector.dart';
import 'package:countstock/presentation/product/product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductState());
  final repo = locator<ProductRepo>();
  Future<void> initData() async {
    try {
      await repo.getProductList().then((result) {
        result.fold((l) {
          emit(state.copyWith(isLoading: false));
        }, (r) {
          emit(state.copyWith(isLoading: false, record: r.records));
        });
      });
      emit(state.copyWith(isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
