import 'package:flutter/material.dart';
import 'package:teste_seguimentos_moteis/src/core/ui/app_colors.dart';

@immutable
class AppFonts {
  TextStyle robotoBold27px() => TextStyle(
        fontFamily: 'Roboto',
        fontSize: 27.0,
        fontWeight: FontWeight.bold,
        color: AppColors().greyColor,
      );

  TextStyle robotoBold16px() => TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: AppColors().greyColor,
      );

  TextStyle robotoLight27px() => TextStyle(
        fontFamily: 'Roboto',
        fontSize: 27.0,
        fontWeight: FontWeight.normal,
        color: AppColors().greyColor,
      );

  TextStyle robotoLight16px() => TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: AppColors().greyColor,
      );

  TextStyle robotoRegular16px() => TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: AppColors().greyColor,
      );

  TextStyle robotoRegular21px() => TextStyle(
        fontFamily: 'Roboto',
        fontSize: 21.0,
        fontWeight: FontWeight.w500,
        color: AppColors().greyColor,
      );

  TextStyle robotoRegular14px() => TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: AppColors().greyColor,
      );
}
