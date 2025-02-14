import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getTravelTheme() {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color(0xff393e48),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xff393e48),
      elevation: 0,
      titleTextStyle: GoogleFonts.lato(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.white,
    ),
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleSmall: GoogleFonts.lato(
        color: Colors.white,
      ),
      titleMedium: GoogleFonts.lato(
        color: Colors.white,
      ),
      titleLarge: GoogleFonts.lato(
        color: Colors.white,
      ),
      bodyLarge: GoogleFonts.lato(
        color: Colors.white,
      ),
      bodySmall: GoogleFonts.lato(
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.lato(
        color: Colors.white,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.grey[300]!),
      ),
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.blue),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    ),
  );
}
