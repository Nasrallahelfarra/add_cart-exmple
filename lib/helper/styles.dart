import 'package:flutter/material.dart';

import 'colore_app.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: Font_poppins_regular,
      primaryColor: kColorButtom,
      //Changing this will change the color of the TabBar
      appBarTheme: appBarTheme(),
      textTheme: textTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      canvasColor: Colors.transparent,
      colorScheme: ColorScheme.light(primary: kColorButtom),
      pageTransitionsTheme: PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }));
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      color: kBorderColor,
      width: 0.5,
    ),
    gapPadding: 5,
  );

  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    enabledBorder: outlineInputBorder,
    disabledBorder: outlineInputBorder,
    labelStyle: TextStyle(color: kColorButtom),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: kBorderFocuseColor,
        width: 0.5,
      ),
      gapPadding: 5,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(width: 0.5, color: kBorderColor),
      gapPadding: 5,
    ),
    border: outlineInputBorder,
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(width: 0.5, color: Colors.red),
      gapPadding: 5,
    ),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: kPrimaryColor,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
  );
}
