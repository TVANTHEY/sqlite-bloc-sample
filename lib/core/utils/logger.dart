import 'package:countstock/core/constants/constant.dart';

class Logger {
  static LogMode _logMode = LogMode.debug;

  static void init(LogMode mode) {
    Logger._logMode = mode;
  }

  static void log(dynamic data, {StackTrace? stackTrace}) {
    if (_logMode == LogMode.debug) {
      // ignore: avoid_print
      print("Error: $data$stackTrace");
    }
  }
}