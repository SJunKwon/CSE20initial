import 'package:flutter/material.dart';
import 'package:marcgoz_s_application5/core/app_export.dart';
import 'package:marcgoz_s_application5/widgets/custom_checkbox_button.dart';
import 'package:marcgoz_s_application5/widgets/custom_elevated_button.dart';
import 'package:marcgoz_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInAsEducatorScreen extends StatelessWidget {
  SignInAsEducatorScreen({Key? key}) : super(key: key);

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
                          SizedBox(
                              height: 60.v,
                              width: 264.h,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text:
                                                            "Fac".toUpperCase(),
                                                        style: theme.textTheme
                                                            .displayMedium),
                                                    TextSpan(
                                                        text: "E".toUpperCase(),
                                                        style: theme.textTheme
                                                            .displayMedium),
                                                    TextSpan(
                                                        text:
                                                            "TAP".toUpperCase(),
                                                        style: CustomTextStyles
                                                            .displayMediumPrimary_1)
                                                  ]),
                                                  textAlign: TextAlign.left),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgVectorPrimary,
                                                  height: 31.v,
                                                  width: 39.h,
                                                  margin: EdgeInsets.only(
                                                      top: 13.v, bottom: 10.v))
                                            ])),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("For Educators",
                                            style: CustomTextStyles
                                                .labelMediumBlack90001))
                                  ])),
                          SizedBox(height: 27.v),
                          CustomTextFormField(
                              controller: eController,
                              hintText: "marcpogigwapi@auf.edu.ph",
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(12.h, 1.v, 11.h, 1.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.img1e,
                                      height: 14.v,
                                      width: 20.h)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 39.v),
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
                          SizedBox(height: 9.v)
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

  /// Navigates to the teacherDashboardHomeScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.teacherDashboardHomeScreen);
  }
}
