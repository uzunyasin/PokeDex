import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();

  static String pokeballImageUrl = "images/pokeball.png";

  static const String title = "Pokedex";

  static TextStyle getTitleTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontSize: _calculateFontSize(48),
        fontWeight: FontWeight.bold);
  }

  static TextStyle getPokemonNameTextStyle() {
    if(ScreenUtil().orientation == Orientation.portrait) {
      return TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: _calculateFontSize(24)
      );
    }
    else {
      return TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: _calculateFontSize(20)
      );
    }
  }

  static TextStyle getTypeChipTextStyle() {
    return TextStyle(color: Colors.white, fontSize: _calculateFontSize(20));
  }

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1.2).sp;
    }
  }

  static getPokeInfoTextStyle() {
    return TextStyle(
      fontSize: _calculateFontSize(16)
    );
  }

  static getPokeInfoLabelTextStyle() {
    return TextStyle(
        fontSize: _calculateFontSize(20),
      fontWeight: FontWeight.bold
    );
  }
}
