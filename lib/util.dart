import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(
    BuildContext context, String bodyFontFamily, String displayFontFamily) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;
  TextTheme bodyTextTheme = baseTextTheme.apply(
    fontFamily: bodyFontFamily,
  );
  TextTheme displayTextTheme = baseTextTheme.apply(
    fontFamily: displayFontFamily,
  );
  TextTheme textTheme = displayTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge,
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,
    labelLarge: bodyTextTheme.labelLarge,
    labelMedium: bodyTextTheme.labelMedium,
    labelSmall: bodyTextTheme.labelSmall,
  );
  return textTheme;
}
