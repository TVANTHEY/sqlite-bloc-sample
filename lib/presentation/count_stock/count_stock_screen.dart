import 'package:countstock/core/localization/string_resource.dart';
import 'package:flutter/material.dart';

class CountStockScreen extends StatefulWidget {
  const CountStockScreen({super.key});
  static const String routeName = "/CountStockScreen";

  @override
  State<CountStockScreen> createState() => _CountStockScreenState();
}

class _CountStockScreenState extends State<CountStockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(string('count_stock')),
      ),
    );
  }
}
