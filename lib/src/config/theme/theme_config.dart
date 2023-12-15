import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTheme {
  // static const lightThemeFont = "ComicNeue", darkThemeFont = "Poppins";

  // light theme
  static final lightTheme = ThemeData(
    primaryColor: lightThemeColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: white,
    useMaterial3: true,
    primaryTextTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
      ),
      titleSmall: TextStyle(
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        color: Colors.black,
      ),
      labelLarge: TextStyle(
        color: Colors.black,
      ),
      labelMedium: TextStyle(
        color: Colors.black,
      ),
      labelSmall: TextStyle(
        color: Colors.black,
      ),
      headlineLarge: TextStyle(
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        color: Colors.black,
      ),
      headlineSmall: TextStyle(
        color: Colors.black,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: black,
      secondary: white,
      brightness: Brightness.light,
    ),
    switchTheme: SwitchThemeData(
      thumbColor:
          MaterialStateProperty.resolveWith<Color>((states) => lightThemeColor),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: white,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: black,
        fontSize: 23, //20
      ),
      iconTheme: IconThemeData(color: lightThemeColor),
      elevation: 0,
      actionsIconTheme: IconThemeData(color: lightThemeColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: white,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
  );

  // dark theme
  static final darkTheme = ThemeData(
    primaryColor: darkThemeColor,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: black,
    useMaterial3: true,
    primaryTextTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
      ),
      titleSmall: TextStyle(
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        color: Colors.white,
      ),
      labelLarge: TextStyle(
        color: Colors.white,
      ),
      labelMedium: TextStyle(
        color: Colors.white,
      ),
      labelSmall: TextStyle(
        color: Colors.white,
      ),
      headlineLarge: TextStyle(
        color: Colors.white,
      ),
      headlineMedium: TextStyle(
        color: Colors.white,
      ),
      headlineSmall: TextStyle(
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.dark(
      primary: white,
      secondary: black,
      brightness: Brightness.dark,
    ),
    switchTheme: SwitchThemeData(
      trackColor:
          MaterialStateProperty.resolveWith<Color>((states) => darkThemeColor),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: black,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: white,
        fontSize: 23, //20
      ),
      iconTheme: IconThemeData(color: darkThemeColor),
      elevation: 0,
      actionsIconTheme: IconThemeData(color: darkThemeColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: black,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
  );

  // colors
  static Color lightThemeColor = const Color.fromARGB(255, 255, 67, 67),
      white = Colors.white,
      black = const Color.fromARGB(255, 41, 41, 41),
      darkThemeColor = const Color.fromARGB(255, 255, 54, 54);
}

// import 'package:flutter/material.dart';

// class ThemeConfig {
//   static final darkThemeConfig = ThemeData(
//     colorScheme: const ColorScheme.dark(
//       primary: Colors.black,
//       secondary: Colors.white,
//       brightness: Brightness.dark,
//     ),
//     
//   );
//   static final lightThemeConfig = ThemeData(
//     colorScheme: const ColorScheme.light(
//       primary: Colors.white,
//       secondary: Colors.black,
//       brightness: Brightness.light,
//     ),
   
//   );
// }
