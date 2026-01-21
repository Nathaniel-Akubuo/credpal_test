import 'package:credpal_test/util/app_colors.dart';
import 'package:flutter/material.dart';

class Avenir extends TextStyle {
  const Avenir.w300(double fontSize, {Color? color})
    : super(
        fontFamily: 'Avenir',
        color: color ?? k1A1A1A,
        fontWeight: FontWeight.w300,
        fontSize: fontSize,
        letterSpacing: -0.64,
      );

  const Avenir.w400(double fontSize, {Color? color})
    : super(
        fontFamily: 'Avenir',
        color: color ?? k1A1A1A,

        fontWeight: FontWeight.w400,
        fontSize: fontSize,
        letterSpacing: -0.64,
      );

  const Avenir.w500(double fontSize, {Color? color})
    : super(
        fontFamily: 'Avenir',
        color: color ?? k1A1A1A,

        fontWeight: FontWeight.w500,
        fontSize: fontSize,
        letterSpacing: -0.64,
      );

  const Avenir.w600(double fontSize, {Color? color})
    : super(
        fontFamily: 'Avenir',
        color: color ?? k1A1A1A,

        fontWeight: FontWeight.w600,
        fontSize: fontSize,
        letterSpacing: -0.64,
      );

  const Avenir.w700(double fontSize, {Color? color})
    : super(
        fontFamily: 'Avenir',
        color: color ?? k1A1A1A,

        fontWeight: FontWeight.w700,
        fontSize: fontSize,
        letterSpacing: -0.64,
      );
}
