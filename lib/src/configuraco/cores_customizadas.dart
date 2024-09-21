import 'package:flutter/material.dart';

abstract class CoresCustomizadas {
  static final Map<int, Color> _opacidade = {
    50: const Color.fromARGB(239, 243, 242, 161),
    100: const Color.fromARGB(240, 245, 243, 123),
    200: const Color.fromARGB(241, 239, 241, 163),
    300: const Color.fromARGB(243, 243, 245, 129),
    400: const Color.fromARGB(244, 235, 232, 104),
    500: const Color.fromARGB(245, 182, 179, 7),
    600: const Color.fromARGB(246, 204, 214, 14),
    700: const Color.fromARGB(247, 171, 177, 12),
    800: const Color.fromARGB(248, 124, 126, 10),
    900: const Color.fromARGB(248, 158, 156, 3),
  };

  static Color corContrasteCustomizada = const Color.fromARGB(0, 2, 2, 2);

  static MaterialColor appCorCustomizada = MaterialColor(0xFFffff00, _opacidade);
} 