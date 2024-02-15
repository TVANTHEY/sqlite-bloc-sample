import 'package:countstock/core/localization/string_resource.dart';
import 'package:flutter/material.dart';

class AdjustStockScreen extends StatefulWidget {
  const AdjustStockScreen({super.key});
  static const String routeName = "/AdjustStockScreen";

  @override
  State<AdjustStockScreen> createState() => _AdjustStockScreenState();
}

class _AdjustStockScreenState extends State<AdjustStockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(string('adjust_stock')),),
    );
  }
}
