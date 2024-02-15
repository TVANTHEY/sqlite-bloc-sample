import 'package:countstock/helper/Helper.dart';
import 'package:countstock/presentation/product/product_cubit.dart';
import 'package:countstock/presentation/product/product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});
  static const String routeName = "/ProductScreen";

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final _cubit = ProductCubit();
  @override
  void initState() {
    _cubit.initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Container();
          }
          final record = state.record ?? [];

          if (record.isEmpty) {
            return Container();
          }

          return ListView.builder(
            itemCount: record.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(scaleSize(8)),
                child: Text(record[index].name),
              );
            },
          );
        },
      ),
    );
  }
}
