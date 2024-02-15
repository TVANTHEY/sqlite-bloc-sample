import 'package:countstock/presentation/adjust_stock/adjust_stock_screen.dart';
import 'package:countstock/presentation/count_stock/count_stock_screen.dart';
import 'package:countstock/presentation/screen/main_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static SlideTransition _st(
    animation,
    child, {
    double begin = 1,
    double end = 0,
  }) {
    final tween = Tween(
      begin: Offset(begin, end),
      end: Offset.zero,
    );

    return SlideTransition(
      position: tween.animate(CurvedAnimation(
        parent: animation,
        curve: Curves.ease,
      )),
      child: child,
    );
  }

  static Route<dynamic>? appRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const MainScreen());
      case CountStockScreen.routeName:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const CountStockScreen();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return _st(animation, child);
          },
        );
      case AdjustStockScreen.routeName:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const AdjustStockScreen();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return _st(animation, child);
          },
        );
      default:
        return MaterialPageRoute(builder: (context) => const MainScreen());
    }
  }
}
