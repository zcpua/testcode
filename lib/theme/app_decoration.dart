import 'package:flutter/material.dart';
import 'package:xswl_s_application/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineBlack9004c => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9004c,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0.5,
            ),
          ),
        ],
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBlack90007 => BoxDecoration(
        color: ColorConstant.black90007,
      );
  static BoxDecoration get gradientPurpleA400DeeporangeA400 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.7037037036249834,
            -7.75405692432507e-9,
          ),
          end: Alignment(
            0.29629625888722766,
            0.9999999924812557,
          ),
          colors: [
            ColorConstant.purpleA400,
            ColorConstant.deepOrangeA400,
          ],
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14.00,
    ),
  );

  static BorderRadius circleBorder64 = BorderRadius.circular(
    getHorizontalSize(
      64.00,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius customBorderBL6 = BorderRadius.only(
    topRight: Radius.circular(
      getHorizontalSize(
        6.00,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        6.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        6.00,
      ),
    ),
  );

  static BorderRadius circleBorder32 = BorderRadius.circular(
    getHorizontalSize(
      32.00,
    ),
  );

  static BorderRadius customBorderTL6 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        6.00,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        6.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        6.00,
      ),
    ),
  );
}
