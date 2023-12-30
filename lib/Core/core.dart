import 'package:flutter/material.dart';

// =========================== C O L O R E S   D O   S I S T E M A ===========
class AppColors {
  static Color backgroundContainerHome = const Color.fromRGBO(22, 22, 22, 1);
  static Color backgroundContainerPagesWhite =
      const Color.fromARGB(255, 255, 255, 255);
  static Color backgroundContainerPagesSecondWhite =
      const Color.fromARGB(255, 250, 250, 250);
  static Color primaryColor = const Color.fromRGBO(131, 0, 233, 1);
  static Color labelColorWhite = const Color.fromARGB(255, 255, 255, 255);
  static Color labelColorBlack = const Color.fromARGB(255, 68, 68, 68);
  static Color labelColorBlacklight = const Color.fromARGB(255, 112, 112, 112);
  static LinearGradient linearGradient = const LinearGradient(
    colors: [
      Color.fromRGBO(159, 63, 231, 1),
      Color.fromRGBO(131, 0, 233, 1),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
