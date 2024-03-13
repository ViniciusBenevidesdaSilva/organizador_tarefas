import 'package:flutter/material.dart';

class MyPallette {
  static MaterialColor create() =>
      MaterialColor(
        Colors.black.value,
        const <int, Color>{
          50: Colors.black12,
          100: Colors.black26,
          200: Colors.black26,
          300: Colors.black38,
          400: Colors.black45,
          500: Colors.black45,
          600: Colors.black54,
          700: Colors.black87,
          800: Colors.black,
          900: Colors.black,
        },
      );
}
