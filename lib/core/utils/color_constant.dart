import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9004c = fromHex('#4c000000');

  static Color black9007f = fromHex('#7f000000');

  static Color black900Cc = fromHex('#cc000000');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color purpleA700 = fromHex('#8e1ce7');

  static Color black90007 = fromHex('#07000000');

  static Color purpleA400 = fromHex('#ff00d6');

  static Color pink600 = fromHex('#d72d56');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepOrangeA400 = fromHex('#ff4c00');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
