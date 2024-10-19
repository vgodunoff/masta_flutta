import 'package:flutter/material.dart';

class AppStyles {
  static const host = 'https://run.mocky.io';

  //hotel name 'Steigenberger Makadi', black w500, fontSize: 22
  static const TextStyle kStyleW500F22 = TextStyle(
      fontFamily: 'SF-Pro-Display', fontWeight: FontWeight.w500, fontSize: 22);

  //
  static const TextStyle kTextStyleBlackW400F16 = TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: Color(0xFF000000),
  );

//
  static const TextStyle kTextStyleGreyW400F16 = TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: Color(0xFF828796),
  );

  //
  static const TextStyle kTextStyleW400F16 = TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: Color(0xFF828796),
  );

  //'Оплатить 198 036 руб.'
  static const TextStyle kStyleBlackW500F16 = TextStyle(
    color: Color(0xffFFFFFF),
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

//Адрес отеля, синий цвет, 'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
  static const TextStyle kTextStyleBlueW500F14 = TextStyle(
      color: Color(0xff0D72FF),
      fontFamily: 'SF-Pro-Display',
      fontWeight: FontWeight.w500,
      fontSize: 14);

  static const TextStyle kHelperW400F16 = TextStyle(
      fontFamily: 'SF-Pro-Display',
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: Color(0xFF14142B));
  static const TextStyle kHintW400F12 = TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Color(0xFFA9ABB7),
  );

  static const TextStyle kHintW400F17Sp1 = TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.w400,
    fontSize: 17,
    color: Color(0xFFA9ABB7),
    letterSpacing: 0.2,
    height: 1.2,
  );
}
