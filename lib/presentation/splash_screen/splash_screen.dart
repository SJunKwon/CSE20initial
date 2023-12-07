import 'package:flutter/material.dart';
import 'package:marcgoz_s_application5/core/app_export.dart';
import 'package:marcgoz_s_application5/widgets/custom_elevated_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 45.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFaceTrackerPrimary,
                height: 192.v,
                width: 150.h,
                margin: EdgeInsets.only(bottom: 47.v),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Face".toUpperCase(),
                      style: theme.textTheme.displaySmall,
                    ),
                    TextSpan(
                      text: "TAP".toUpperCase(),
                      style: CustomTextStyles.displaySmallPrimary,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 2.v),
              Container(
                width: 210.h,
                margin: EdgeInsets.only(left: 38.h, right: 20.h),
                child: Text(
                  "FACETAP is a facial recognition app designed to simplify and streamline attendance management for educational institutions, corporate organizations, and events using facial recognition technology.",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmall10.copyWith(height: 1.84),
                ),
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                height: 44.v,
                text: "Get Started".toUpperCase(),
                margin: EdgeInsets.only(left: 17.h),
                buttonStyle: CustomButtonStyles.outlinePrimaryBL4,
                buttonTextStyle:
                CustomTextStyles.labelLargeOnPrimaryContainerBlack,
                onPressed: () {
                  onTapGetStarted(context);
                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the permissionsScreen when the action is triggered.
  void onTapGetStarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.permissionsScreen);
  }
}
