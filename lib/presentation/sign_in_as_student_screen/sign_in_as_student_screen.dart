import 'package:flutter/material.dart';
import 'package:facetap/core/app_export.dart';
import 'package:facetap/widgets/custom_checkbox_button.dart';
import 'package:facetap/widgets/custom_elevated_button.dart';
import 'package:facetap/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInAsStudentScreen extends StatelessWidget {
  SignInAsStudentScreen({Key? key}) : super(key: key);

  TextEditingController eController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  bool rememberme = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 37.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: 66.v,
                                  width: 242.h,
                                  margin: EdgeInsets.only(right: 13.h),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "Fac".toUpperCase(),
                                                      style: theme.textTheme
                                                          .displayMedium),
                                                  TextSpan(
                                                      text: "E".toUpperCase(),
                                                      style: theme.textTheme
                                                          .displayMedium),
                                                  TextSpan(
                                                      text: "TAP".toUpperCase(),
                                                      style: CustomTextStyles
                                                          .displayMediumPrimary_1)
                                                ]),
                                                textAlign: TextAlign.left)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorPrimary41x47,
                                            height: 41.v,
                                            width: 47.h,
                                            alignment: Alignment.topRight)
                                      ]))),
                          Text("For Students",
                              style: CustomTextStyles.labelMediumBlack90001),
                          SizedBox(height: 24.v),
                          CustomTextFormField(
                              controller: eController,
                              hintText: "marcpogigwapi@auf.edu.ph",
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(12.h, 2.v, 10.h, 2.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.img1e,
                                      height: 14.v,
                                      width: 20.h)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 41.v),
                              contentPadding: EdgeInsets.only(right: 30.h),
                              borderDecoration:
                                  TextFormFieldStyleHelper.underLineBlack),
                          SizedBox(height: 23.v),
                          CustomTextFormField(
                              controller: passwordFieldController,
                              textInputAction: TextInputAction.done,
                              suffix: SizedBox(
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgPasswordField,
                                      height: 40.v,
                                      width: 284.h)),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 40.v),
                              obscureText: true,
                              borderDecoration:
                                  TextFormFieldStyleHelper.custom),
                          SizedBox(height: 26.v),
                          _buildRememberme(context),
                          SizedBox(height: 22.v),
                          CustomElevatedButton(
                              height: 49.v,
                              text: "Login".toUpperCase(),
                              rightIcon: Container(
                                  margin: EdgeInsets.only(),
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgRoundedRectangle1Copy9,
                                      height: 49.v,
                                      width: 284.h)),
                              buttonStyle: CustomButtonStyles.outlinePrimary2,
                              buttonTextStyle: CustomTextStyles
                                  .titleSmallOnPrimaryContainerBlack,
                              onPressed: () {
                                onTapLogin(context);
                              }),
                          SizedBox(height: 25.v),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Don’t have an account?",
                                    style: CustomTextStyles
                                        .bodyMediumBlack900Thin),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "Signup here",
                                    style: CustomTextStyles.bodyMediumPrimary)
                              ]),
                              textAlign: TextAlign.left),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  Widget _buildRememberme(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            text: "Remember me",
            value: rememberme,
            onChange: (value) {
              rememberme = value;
            }));
  }

  /// Navigates to the sdHomeFacialRecognitionScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sdHomeFacialRecognitionScreen);
  }
}
