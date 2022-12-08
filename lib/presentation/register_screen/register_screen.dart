import 'controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/core/utils/validation_functions.dart';
import 'package:xswl_s_application/widgets/custom_button.dart';
import 'package:xswl_s_application/widgets/custom_text_form_field.dart';

class RegisterScreen extends GetWidget<RegisterController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 16,
                      right: 16,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgReply,
                      height: getVerticalSize(
                        11.00,
                      ),
                      width: getHorizontalSize(
                        12.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 33,
                      right: 16,
                    ),
                    child: Text(
                      "lbl_register2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtComfortaaRegular36,
                    ),
                  ),
                  CustomTextFormField(
                    width: 343,
                    focusNode: FocusNode(),
                    controller: controller.componentController,
                    hintText: "lbl_email_address".tr,
                    margin: getMargin(
                      left: 16,
                      top: 29,
                      right: 16,
                    ),
                    alignment: Alignment.center,
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "Please enter valid email";
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    width: 343,
                    focusNode: FocusNode(),
                    controller: controller.componentOneController,
                    hintText: "lbl_create_password".tr,
                    margin: getMargin(
                      left: 16,
                      top: 16,
                      right: 16,
                    ),
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center,
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "Please enter valid password";
                      }
                      return null;
                    },
                    isObscureText: true,
                  ),
                  CustomButton(
                    width: 343,
                    text: "lbl_next".tr.toUpperCase(),
                    margin: getMargin(
                      left: 16,
                      top: 16,
                      right: 16,
                      bottom: 5,
                    ),
                    variant: ButtonVariant.OutlineBlack900,
                    fontStyle: ButtonFontStyle.RobotoBlack13,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
