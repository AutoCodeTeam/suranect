import 'package:flutter/material.dart';

class AppShadow {
  AppShadow._();

  static BoxShadow sShadow = BoxShadow(
    color: const Color(0xFF091E42).withOpacity(0.25),
    offset: const Offset(0, 1),
    blurRadius: 2,
  );

  static BoxShadow MShadow = BoxShadow(
    color: const Color(0xFF091E42).withOpacity(0.25),
    offset: const Offset(0, 3),
    blurRadius: 4,
  );

  static BoxShadow LShadow = BoxShadow(
    color: const Color(0xFF091E42).withOpacity(0.25),
    offset: const Offset(0, 8),
    blurRadius: 12,
  );

  static BoxShadow XLShadow = BoxShadow(
    color: const Color(0xFF091E42).withOpacity(0.25),
    offset: const Offset(0, 18),
    blurRadius: 28,
  );
}
