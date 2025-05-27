import 'package:flutter/material.dart';

class DSGovTheme {

  static const _colorScheme = ColorScheme.light(
    primary: Color(0xFF1351B4),
    primaryContainer: Color(0xFFC5D4EB),
    secondary: Color(0xFF168821),
    secondaryContainer: Color(0xFF03DAC5),
    surface: Colors.white,
    error: Color(0xFFB00020),
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSurface: Colors.black,
    onError: Colors.white,
  );


  /// Return[ThemeData] element to standardize all app elements based on
  /// GOV.br design system
  static ThemeData get theme {
    return ThemeData(
      primaryColor: _colorScheme.primary,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: _colorScheme,

      fontFamily: 'packages/flutter_ds_gov_br/Rawline',
      textTheme: _textTheme,
      iconTheme: _iconTheme,

      appBarTheme: _appBarTheme,
      dividerTheme: _dividerTheme,
      snackBarTheme: _snackBarTheme,

      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      inputDecorationTheme: _inputDecorationTheme,
      floatingActionButtonTheme:_floatingActionButtonTheme,
      iconButtonTheme: _iconButtonTheme,
    );
  }


  static const _textTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF005885)),
    displayMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF005885)),
    bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 14, color: Colors.black87),
    labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
  );


  //<! Theme buttons>

  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: _colorScheme.primary,
      foregroundColor: _colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
    ),
  );

  static final _outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: _colorScheme.surface,
      foregroundColor: _colorScheme.primary,
      side: BorderSide(color: _colorScheme.primary, width: 2),
    ),
  );

  static final _floatingActionButtonTheme =  FloatingActionButtonThemeData(
    foregroundColor: _colorScheme.surface,
    backgroundColor: _colorScheme.secondary,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60)
    ),
  );

  static final _iconButtonTheme = IconButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: _colorScheme.primary,
    ),
  );

  //<! Theme others elements>
  static const _dividerTheme = DividerThemeData(
    color: Colors.black26,
    thickness: 1,
  );

  static final _iconTheme = IconThemeData(
    color: _colorScheme.primary.withOpacity(0.8),
  );

  static final _appBarTheme = AppBarTheme(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.transparent,
    shadowColor: Colors.black,
    elevation: 1,
    iconTheme: _iconTheme,
  );

  static final _inputDecorationTheme = InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,

    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffE0E0E0)),
    ),

    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _colorScheme.primary, width: 2.0),
    ),

    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _colorScheme.error, width: 2.0),
    ),

    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _colorScheme.error, width: 2.0),
    ),

    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
    ),

    labelStyle: const TextStyle(color: Colors.grey),

    floatingLabelStyle: WidgetStateTextStyle.resolveWith((states) {
      if (states.contains(WidgetState.error)) {
        return TextStyle(
          color: _colorScheme.error,
          fontWeight: FontWeight.w600,
        );
      }

      if (states.contains(WidgetState.focused)) {
        return TextStyle(
          color: _colorScheme.primary,
          fontWeight: FontWeight.w600,
        );
      }

      return TextStyle(color: _colorScheme.primary);
    }),

    errorStyle: TextStyle(color: _colorScheme.error),
  );

  static final _snackBarTheme = SnackBarThemeData(
    backgroundColor: _colorScheme.primary,
    elevation: 4,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}