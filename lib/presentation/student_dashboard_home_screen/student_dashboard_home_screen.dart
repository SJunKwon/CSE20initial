import 'package:flutter/material.dart';
import 'package:marcgoz_s_application5/core/app_export.dart';
import 'package:marcgoz_s_application5/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:marcgoz_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:marcgoz_s_application5/widgets/custom_bottom_bar.dart';

class StudentDashboardHomeScreen extends StatelessWidget {
  StudentDashboardHomeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 37.h,
            vertical: 22.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerRight,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "09: 45 ".toUpperCase(),
                        style: CustomTextStyles.montserratBlack90001Light,
                      ),
                      TextSpan(
                        text: "am ".toUpperCase(),
                        style: CustomTextStyles.headlineLargeBlack90001,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 32.h),
                  child: Text(
                    "Monday, November 12, 2023",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 39.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 50.h,
                  vertical: 34.v,
                ),
                decoration: AppDecoration.gradientPrimaryToGreen.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder41,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup19,
                      height: 108.adaptSize,
                      width: 108.adaptSize,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "Clock In",
                      style: CustomTextStyles.titleMediumMontserrat,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Your next class is ",
                      style: theme.textTheme.bodyMedium,
                    ),
                    TextSpan(
                      text: "CSE20",
                      style: CustomTextStyles.titleSmallGreen40002,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 29.v),
              SizedBox(
                height: 69.v,
                width: 284.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFrameGreen40002,
                      height: 15.v,
                      width: 11.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 46.h),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Column(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgClock,
                                  height: 33.adaptSize,
                                  width: 33.adaptSize,
                                ),
                                SizedBox(height: 2.v),
                                Text(
                                  "--:--",
                                  style: theme.textTheme.bodyMedium,
                                ),
                                Text(
                                  "Time In",
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 68.v,
                            width: 70.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgFrameGreen4000215x11,
                                  height: 15.v,
                                  width: 11.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(right: 7.h),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgClockGreen40001,
                                        height: 33.adaptSize,
                                        width: 33.adaptSize,
                                      ),
                                      SizedBox(height: 2.v),
                                      Text(
                                        "--:--",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                      Text(
                                        "Time Out",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Column(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgFrameGreen40001,
                                  height: 33.adaptSize,
                                  width: 33.adaptSize,
                                ),
                                SizedBox(height: 2.v),
                                Text(
                                  "--:--",
                                  style: theme.textTheme.bodyMedium,
                                ),
                                Text(
                                  "Class Time",
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Fac".toUpperCase(),
                style: theme.textTheme.headlineLarge,
              ),
              TextSpan(
                text: "E".toUpperCase(),
                style: theme.textTheme.headlineLarge,
              ),
              TextSpan(
                text: "TAP".toUpperCase(),
                style: CustomTextStyles.headlineLargePrimary,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ),
      actions: [
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse8,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 5.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
