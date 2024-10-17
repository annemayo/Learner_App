import 'package:flutter/material.dart';
import 'package:udemy_learning_app/presentation/resources/color_manager.dart';
import 'package:udemy_learning_app/presentation/resources/font_manager.dart';
import 'package:udemy_learning_app/presentation/resources/styles_manager.dart';
import 'package:udemy_learning_app/presentation/resources/values_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
    //colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),
    //ripple color
    splashColor: ColorManager.primaryOpacity70,
    //card view theme
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4),
    // App bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.primaryOpacity70,
        titleTextStyle: getTextStyleRegular(
            color: ColorManager.white, fontSize: FontSizeManager.s16)),
    // Button theme
    buttonTheme: ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.primaryOpacity70),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getTextStyleRegular(color: ColorManager.white),
            backgroundColor: ColorManager.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12)))),

    // Text theme
    textTheme: TextTheme(
        displayLarge: getTextStyleSemiBold(
            color: ColorManager.darkGrey, fontSize: FontSizeManager.s16),
        displayMedium: getTextStyleRegular(
            color: ColorManager.white, fontSize: FontSizeManager.s16),
        displaySmall: getTextStyleBold(
            color: ColorManager.primary, fontSize: FontSizeManager.s16),
        headlineMedium: getTextStyleRegular(
            color: ColorManager.primary, fontSize: FontSizeManager.s14),
        titleMedium: getTextStyleMedium(
            color: ColorManager.lightGrey, fontSize: FontSizeManager.s14),
        titleSmall: getTextStyleMedium(
            color: ColorManager.primary, fontSize: FontSizeManager.s14),
        bodyMedium: getTextStyleMedium(color: ColorManager.lightGrey),
        bodySmall: getTextStyleRegular(color: ColorManager.grey1),
        bodyLarge: getTextStyleRegular(color: ColorManager.grey)),
    // input decoration theme (text form field)

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.p8),
      // hint style
      hintStyle: getTextStyleRegular(color: ColorManager.grey1),

      // label style
      labelStyle: getTextStyleMedium(color: ColorManager.darkGrey),
      // error style
      errorStyle: getTextStyleRegular(color: ColorManager.error),

      // enabled border
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),

      // focused border
      focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),

      // error border
      errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.error, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
      // focused error border
      focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
    ),
  );
}
