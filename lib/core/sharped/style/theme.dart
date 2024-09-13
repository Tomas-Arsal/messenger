import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'color.dart';

Color theme1 = Color(0xffffffff);
ThemeData dark = ThemeData(
    primarySwatch: createMaterialColor(CozmoColor2),
    scaffoldBackgroundColor: Color(0xff264B5E),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff264B5E),
        titleTextStyle: TextStyle(
          color: Color(0xfffff5dd),
          fontSize: 22,
          fontWeight: FontWeight.bold,
          letterSpacing: 3,
        ),
        iconTheme: IconThemeData(color: Color(0xfffff5dd)),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color(0xfffff5dd),
            statusBarIconBrightness: Brightness.dark)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff2f5a72),
      selectedItemColor: Color(0xfffff5dd),
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: false,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xfffff5dd),
      foregroundColor: Color(0xff264B5E),
    ),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
            fontSize: 18,
            color: Color(0xfffaecd2),
            fontWeight: FontWeight.w500)),
    fontFamily: 'jannah');
ThemeData light = ThemeData(
    primarySwatch: createMaterialColor(CozmoColor2),
    scaffoldBackgroundColor: theme1,
    drawerTheme: DrawerThemeData(backgroundColor: CozmoColor),
    appBarTheme: AppBarTheme(
        backgroundColor: theme1,
        titleTextStyle: const TextStyle(
          color: Color(0xff264B5E),
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: CozmoColor6),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: CozmoColor,
            statusBarIconBrightness: Brightness.light)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: CozmoColor3,
        selectedItemColor: Colors.white,
        unselectedItemColor: CozmoColor1,
        showUnselectedLabels: false,
        elevation: 70),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: CozmoColor2, foregroundColor: Colors.white),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
            fontSize: 18,
            color: Color(0xff264B5E),
            fontWeight: FontWeight.w500)),
    fontFamily: 'jannah');
