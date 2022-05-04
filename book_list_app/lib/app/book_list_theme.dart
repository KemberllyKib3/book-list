import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const String applicationName = "Book List";

class BookListColors {
  static const Color border = Color(0xFFebebeb);
  static const Color black = Color(0xFF303030);
  static const Color gray = Color(0xFF828282);
  static const Color background = Color(0xFFfafafa);

  static const Color hGreen = Color(0xFF55A226);
  static const Color hRed = Color(0xFFFD392F);
  static const Color hYellow = Color(0xFFFBBC05);
  static const Color hBlue = Color(0xFF007AFF);
}

class BookListTS {
  static const TextStyle font20 = TextStyle(
    color: BookListColors.black,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle font16 = TextStyle(
    color: BookListColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle font14 = TextStyle(
    color: BookListColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle font12 = TextStyle(
    color: BookListColors.black,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
}

ThemeData buildTheme() {
  return ThemeData(
    backgroundColor: BookListColors.background,
    fontFamily: GoogleFonts.workSans().fontFamily,
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    primaryColor: BookListColors.black,
    colorScheme: ColorScheme.fromSwatch(accentColor: BookListColors.gray),
    appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: Platform.isIOS ? 0 : 1,
        iconTheme: const IconThemeData(
          color: BookListColors.black,
        ),
        toolbarTextStyle: BookListTS.font16.copyWith(
          fontWeight: FontWeight.w500,
        ),
        titleTextStyle: BookListTS.font16.copyWith(
          fontWeight: FontWeight.w600,
        )),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      padding: EdgeInsets.all(15),
    ),
  );
}
