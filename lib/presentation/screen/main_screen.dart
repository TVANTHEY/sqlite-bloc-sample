import 'package:countstock/core/localization/string_resource.dart';
import 'package:countstock/helper/Helper.dart';
import 'package:countstock/presentation/adjust_stock/adjust_stock_screen.dart';
import 'package:countstock/presentation/count_stock/count_stock_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    InitResource.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(string('name')),
      ),
      body: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, CountStockScreen.routeName);
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.amber,
                width: double.infinity,
                child: Text("Count Stock"),
                height: scaleSize(150),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AdjustStockScreen.routeName);
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.blueAccent,
                width: double.infinity,
                child: Text("Adjust stock"),
                height: scaleSize(150),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
