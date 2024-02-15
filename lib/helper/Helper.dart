import 'package:countstock/core/utils/SizeConfig.dart';

double scaleSize(double size, [double factor = 0.5]) =>
    size + (SizeConfig.scale(size) - size) * factor;
