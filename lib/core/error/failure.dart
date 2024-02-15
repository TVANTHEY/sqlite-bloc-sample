import 'package:countstock/core/constants/colors.dart';
import 'package:countstock/core/constants/global_key.dart';
import 'package:countstock/helper/Helper.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String message;

  const Failure(this.message);
}

class DataFailure extends Failure {
  DataFailure(super.message) {
    if (scaffoldMessengerKey.currentState != null) {
      scaffoldMessengerKey.currentState!.showSnackBar(SnackBar(
        backgroundColor: kRed,
        content: Text(
          message,
          style: TextStyle(color: kWhite, fontSize: scaleSize(14)),
        ),
      ));
    }
  }
}
