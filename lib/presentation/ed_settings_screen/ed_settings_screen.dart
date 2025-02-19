// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:facetap/core/app_export.dart';
import 'package:facetap/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:facetap/widgets/app_bar/appbar_subtitle.dart';
import 'package:facetap/widgets/app_bar/custom_app_bar.dart';
import 'package:facetap/widgets/custom_bottom_bar.dart';
import 'package:facetap/widgets/custom_outlined_button.dart';

class EdSettingsScreen extends StatelessWidget {
  EdSettingsScreen({Key? key})
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
            horizontal: 26.h,
            vertical: 19.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "Account Settings",
                  style: CustomTextStyles.bodyMediumSecondaryContainer,
                ),
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  right: 26.h,
                ),
                child: _buildThirty(
                  context,
                  changePassword: "Edit profile",
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  right: 25.h,
                ),
                child: _buildThirty(
                  context,
                  changePassword: "Change password",
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(right: 26.h),
                child: _buildThirty(
                  context,
                  changePassword: "Delete account?",
                ),
              ),
              Spacer(),
              CustomOutlinedButton(
                text: "Logout",
                margin: EdgeInsets.symmetric(horizontal: 7.h),
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
      leadingWidth: 64.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse8,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 5.v,
          bottom: 5.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Yennefer Doe",
        margin: EdgeInsets.only(left: 10.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildThirty(
    BuildContext context, {
    required String changePassword,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            changePassword,
            style: CustomTextStyles.bodyMediumRegular15.copyWith(
              color: appTheme.black90001,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ],
    );
  }
}
